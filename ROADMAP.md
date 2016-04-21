# Rodmap for icenetwork.org




### Next Steps

* Refactor dir structure
- rename `views\partials` dir to `views\_partials`
- update all references in `views\index.jade`
- update `ingores` list in `app.coffee` and `app.production.coffee`



### Update Roots build recipe

* build a ```.json``` file that models the site-map (pages and copy)
* setup unit or end-to-end tests to verify that there are html files for each page sepcified in the '.json' specs
* configure ```.jade``` layouts to fetch copy for each page from site-map model
* add plugin to CMS to enable product owners to reset the site to the latest stable build.