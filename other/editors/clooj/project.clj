(defproject clooj "0.5"
  :description "clooj, a small IDE for clojure"
  :url "https://github.com/arthuredelstein/clooj"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :main clooj.core
  :dependencies [[org.clojure/clojure "1.6.0"]
                 [clj-inspector "0.0.15"]
                 [slamhound "1.5.4"]
                 [com.cemerick/pomegranate "0.3.0"]
                 [com.fifesoft/rsyntaxtextarea "2.5.0"]
                 [org.clojure/tools.nrepl "0.2.10"]])
