(ns inteligao.ios.homekit)

(def ReactNative (js/require "react-native"))

(def NativeModules (.-NativeModules ReactNative))

(def HomeKit (.-HomeKit NativeModules))

(defn report []
      (.report HomeKit))

(defn add-home [name]
      (.addHome HomeKit name))

(defn remove-home [name]
      (.removeHome HomeKit name))

(defn homes []
  [])

(defn accessories [h]
  [])

(defn services [h]
  [])

(defn characteristics [h]
  [])

