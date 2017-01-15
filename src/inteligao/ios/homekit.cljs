(ns inteligao.ios.homekit)

(def ReactNative (js/require "react-native"))

(def NativeModules (.-NativeModules ReactNative))

(def HomeKit (.-HomeKit NativeModules))

(defn add-event [title]
      (.addEvent HomeKit (str title "1") (str title "4")))

(defn homes []
  [])

(defn accessories [h]
  [])

(defn services [h]
  [])

(defn characteristics [h]
  [])

