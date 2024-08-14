module.exports = {
  content: [
    /* Process all JavaScript files in django_app. */
    'apps/**/*.{js}',
    'apps/**/templates/**/*.html',
    'apps/**/*.py',

    /* Ignore any JavaScript in node_modules folder. */
    '!**/node_modules',

    /* Process all JavaScript files in vite_app src. */
    'src/**/*.{js}',
  ],
};