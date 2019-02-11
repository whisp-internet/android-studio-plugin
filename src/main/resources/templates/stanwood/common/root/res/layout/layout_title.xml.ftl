<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools">
<#if createItemViewModel!false>
    <data>

        <variable
            name="vm"
            type="${packageName}<#if itemCreatePackage!false>.vm</#if>.${itemViewModelName}" />
    </data>
</#if>
    <TextView
        android:id="@+id/title"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:padding="@dimen/list_item_padding"
<#if isClickableItem!false>
        android:background="?android:selectableItemBackground"
</#if>
<#if createItemViewModel!false>
        android:text="@{vm.title}"
</#if>
        android:textAppearance="@style/TextAppearance.App.Title"
        tools:text="Title" />
</layout>