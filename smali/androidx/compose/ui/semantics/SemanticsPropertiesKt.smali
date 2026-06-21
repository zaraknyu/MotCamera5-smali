.class public abstract Landroidx/compose/ui/semantics/SemanticsPropertiesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;

    const-string/jumbo v2, "stateDescription"

    const-string v3, "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v5

    const-string/jumbo v0, "progressBarRangeInfo"

    const-string v3, "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    const-string/jumbo v0, "paneTitle"

    const-string v3, "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    const-string v0, "liveRegion"

    const-string v3, "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v8

    const-string v0, "focused"

    const-string v3, "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v9

    const-string v0, "isContainer"

    const-string v3, "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v10

    const-string v0, "isTraversalGroup"

    const-string v3, "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v11

    const-string v0, "contentType"

    const-string v3, "getContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentType;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v12

    const-string v0, "contentDataType"

    const-string v3, "getContentDataType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentDataType;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v13

    const-string/jumbo v0, "traversalIndex"

    const-string v3, "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v14

    const-string v0, "horizontalScrollAxisRange"

    const-string v3, "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v15

    const-string/jumbo v0, "verticalScrollAxisRange"

    const-string v3, "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v16

    const-string/jumbo v0, "role"

    const-string v3, "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v17

    const-string/jumbo v0, "testTag"

    const-string v3, "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v18

    const-string/jumbo v0, "textSubstitution"

    const-string v3, "getTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v19

    const-string v0, "isShowingTextSubstitution"

    const-string v3, "isShowingTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v20

    const-string v0, "inputText"

    const-string v3, "getInputText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v21

    const-string v0, "editableText"

    const-string v3, "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v22

    const-string/jumbo v0, "textSelectionRange"

    const-string v3, "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v23

    const-string v0, "imeAction"

    const-string v3, "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v24

    const-string/jumbo v0, "selected"

    const-string v3, "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v25

    const-string v0, "collectionInfo"

    const-string v3, "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v26

    const-string v0, "collectionItemInfo"

    const-string v3, "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v27

    const-string/jumbo v0, "toggleableState"

    const-string v3, "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v28

    const-string v0, "isEditable"

    const-string v3, "isEditable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v29

    const-string v0, "maxTextLength"

    const-string v3, "getMaxTextLength(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v30

    const-string v0, "customActions"

    const-string v3, "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;"

    invoke-static {v1, v0, v3, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v31

    filled-new-array/range {v5 .. v31}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-void
.end method

.method public static final AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    invoke-direct {v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3
    iput-boolean p0, v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->isImportantForAccessibility:Z

    return-object v0
.end method

.method public static final AccessibilityKey(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 2

    .line 4
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public static final setContentDescription(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsConfiguration;I)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    new-instance v1, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v1, p1}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    return-void
.end method
