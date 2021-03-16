Frog: a green theme for OpenEDX
===============================

Based on `Indigo <https://github.com/overhangio/indigo>`__. Detailed instructions can be found there.

Installation
------------

Everything is done in one step::

    ./apply.sh

Customization
-------------

Setting custom values
~~~~~~~~~~~~~~~~~~~~~

A few settings in the theme can be easily customised: this includes the theme primary color, landing page tagline, footer legal links. Theme settings are defined in the ``config.yml`` file at the root of the repository.

Logos
~~~~~

The LMS logo resides in ``theme/lms/static/images/logo.png`` and the CMS logo is in ``theme/cms/static/images/studio-logo.png``.

CMS colors
~~~~~~~~~~

Unfortunately CMS doesn't respect the ``$primary`` color setting. Edit ``theme/cms/static/sass/partials/cms/theme/_variables.scss`` instead (explore `defaults <https://github.com/edx/edx-platform/blob/master/cms/static/sass/partials/cms/theme/_variables-v1.scss>`__ to see what's available).
Please keep in mind that certain styles are defined in courses and thus are beyond the CMS/LMS scope.

Arbitrary style customizations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Edit ``theme/APP/static/sass/partials/APP/theme/_extra.css`` where APP is cms or lms to override any style defined in these apps. See the ``.course-outline`` block in lms for an example.

License
-------

This work is licensed under the terms of the `GNU Affero General Public License (AGPL) <https://github.com/overhangio/indigo/blob/master/LICENSE.txt>`_.
