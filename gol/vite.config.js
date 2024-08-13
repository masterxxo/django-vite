import { defineConfig, loadEnv } from 'vite';
import { resolve, join } from 'path';

const postcssConfig = {
    plugins: [
      require('postcss-import')(),
      require('postcss-simple-vars')(),
      require('tailwindcss/nesting')(),
      require('tailwindcss')(),
      require('autoprefixer')(),
    ],
  };

export default defineConfig(({ mode }) => {
    const env = loadEnv(mode, process.cwd());

    const INPUT_DIR = './assets';
    const OUTPUT_DIR= './dist';

    return {
        resolve: {
            alias: {
                '@': resolve(INPUT_DIR),
            },
        },
        root: resolve(INPUT_DIR),
        base: '/static/',
        css: {
            postcss: postcssConfig,
        },
        server: {
            host: env.DJANGO_VITE_DEV_SERVER_HOST,
            port: env.DJANGO_VITE_DEV_SERVER_PORT,
        },
        build: {
            manifest: true,
            emptyOutDir: true,
            outDir: resolve(OUTPUT_DIR),
            rollupOptions: {
                main: join(INPUT_DIR, '/js/app.js'),
                css: join(INPUT_DIR, '/css/app.css'),
            },
        }
    }
});
