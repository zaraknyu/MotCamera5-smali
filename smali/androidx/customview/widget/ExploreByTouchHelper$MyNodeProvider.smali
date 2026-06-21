.class public final Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Lcom/google/android/gms/tasks/zzs;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/core/view/AccessibilityDelegateCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/AccessibilityDelegateCompat;I)V
    .locals 0

    iput p2, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    const/16 p1, 0xe

    invoke-direct {p0, p1}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    return-void
.end method

.method private final createAccessibilityNodeInfo$androidx$customview$widget$ExploreByTouchHelper$MyNodeProvider(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    check-cast p0, Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object p1
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 45

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v3}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v5, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-nez v6, :cond_2

    :goto_1
    move-object v6, v0

    move v4, v1

    const/4 v1, 0x0

    goto/16 :goto_55

    :cond_2
    iget-object v7, v6, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v10, v9, Landroid/view/View;

    if-eqz v10, :cond_3

    check-cast v9, Landroid/view/View;

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput v8, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    invoke-virtual {v3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v9, v9, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_bf

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v10

    iget v10, v10, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    if-ne v9, v10, :cond_6

    move v9, v8

    :cond_6
    iput v9, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    invoke-virtual {v3, v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :goto_4
    iput v1, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-virtual {v0, v6}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->labelToActionId:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "android.view.View"

    invoke-virtual {v5, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v10, v7, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v11, v7, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v12, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "android.widget.EditText"

    invoke-virtual {v5, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_7
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "android.widget.TextView"

    invoke-virtual {v5, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_8
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_9

    const/4 v13, 0x0

    :cond_9
    check-cast v13, Landroidx/compose/ui/semantics/Role;

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/16 p0, 0x0

    if-eqz v13, :cond_e

    iget v4, v13, Landroidx/compose/ui/semantics/Role;->value:I

    iget-boolean v8, v7, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    if-nez v8, :cond_a

    invoke-static {v14, v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_a
    const-string v8, "AccessibilityNodeInfo.roleDescription"

    if-ne v4, v14, :cond_b

    const v4, 0x7f12053a

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v14, v8, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    if-ne v4, v15, :cond_c

    const v4, 0x7f120539

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v14, v8, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_c
    invoke-static {v4}, Landroidx/compose/ui/platform/InvertMatrixKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x5

    if-ne v4, v14, :cond_d

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->isUnmergedLeafNode$ui_release()Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-eqz v4, :cond_e

    :cond_d
    invoke-virtual {v5, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-static {v7}, Landroidx/compose/ui/platform/InvertMatrixKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    const/4 v4, 0x4

    invoke-static {v4, v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v15, 0x0

    :goto_6
    iget-object v14, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ge v15, v4, :cond_12

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v4

    move-object/from16 v4, v18

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    move-object/from16 v18, v8

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v8

    move/from16 v20, v15

    iget v15, v4, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v8, v15}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v8

    iget-object v15, v4, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    iget v4, v4, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    const/4 v15, -0x1

    if-ne v4, v15, :cond_f

    goto :goto_7

    :cond_f
    if-eqz v8, :cond_10

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v14, v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_11
    :goto_7
    add-int/lit8 v15, v20, 0x1

    move-object/from16 v8, v18

    move/from16 v4, v19

    goto :goto_6

    :cond_12
    iget v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    const/4 v8, 0x1

    if-ne v1, v4, :cond_13

    invoke-virtual {v14, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_ACCESSIBILITY_FOCUS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :goto_8
    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getInfoText(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v21

    iget-object v15, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->urlSpanCache:Landroidx/core/view/MenuHostHelper;

    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v25, v2

    iget-object v2, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    move-object/from16 v26, v6

    iget-object v6, v4, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    invoke-direct {v8, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v27, v2

    iget-object v2, v4, Landroidx/compose/ui/text/AnnotatedString;->spanStylesOrNull:Ljava/util/ArrayList;

    move-object/from16 v28, v11

    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    move-object/from16 v29, v0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v11, :cond_23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v30, v0

    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    move-object/from16 v31, v2

    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    move/from16 v32, v11

    iget v11, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget-object v1, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    invoke-interface {v1}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v9

    move-object v1, v13

    move-object/from16 v35, v14

    iget-wide v13, v2, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    move-object/from16 v36, v1

    iget-object v1, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v37, v1

    iget-object v1, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    move-wide/from16 v19, v13

    iget-object v13, v2, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget-object v14, v2, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->background:J

    move-wide/from16 v40, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-object/from16 v42, v5

    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v4

    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    const-wide/16 v43, 0x10

    if-eqz v4, :cond_14

    goto :goto_a

    :cond_14
    cmp-long v2, v9, v43

    if-eqz v2, :cond_15

    new-instance v2, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v2, v9, v10}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    goto :goto_a

    :cond_15
    sget-object v2, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    :goto_a
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v4

    invoke-static {v8, v4, v5, v11, v0}, Lkotlinx/coroutines/channels/ChannelKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    move/from16 v23, v0

    move-object/from16 v18, v8

    move/from16 v22, v11

    invoke-static/range {v18 .. v23}, Lkotlinx/coroutines/channels/ChannelKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    move-object/from16 v0, v18

    move/from16 v2, v22

    move/from16 v4, v23

    if-nez v37, :cond_17

    if-eqz v1, :cond_16

    goto :goto_b

    :cond_16
    const/16 v1, 0x21

    goto :goto_12

    :cond_17
    :goto_b
    if-nez v37, :cond_18

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    goto :goto_c

    :cond_18
    move-object/from16 v5, v37

    :goto_c
    if-eqz v1, :cond_19

    iget v1, v1, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_d

    :cond_19
    const/4 v1, 0x0

    :goto_d
    new-instance v8, Landroid/text/style/StyleSpan;

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    iget v5, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v9, v9, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-ltz v5, :cond_1a

    const/4 v5, 0x1

    :goto_e
    const/4 v9, 0x1

    goto :goto_f

    :cond_1a
    const/4 v5, 0x0

    goto :goto_e

    :goto_f
    if-ne v1, v9, :cond_1b

    const/4 v1, 0x1

    goto :goto_10

    :cond_1b
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_1c

    if-eqz v5, :cond_1c

    const/4 v1, 0x3

    goto :goto_11

    :cond_1c
    if-eqz v5, :cond_1d

    const/4 v1, 0x1

    goto :goto_11

    :cond_1d
    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    :goto_11
    invoke-direct {v8, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {v0, v8, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_12
    if-eqz v3, :cond_20

    iget v3, v3, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    or-int/lit8 v5, v3, 0x1

    if-ne v5, v3, :cond_1f

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v5, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    or-int/lit8 v5, v3, 0x2

    if-ne v5, v3, :cond_20

    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_20
    if-eqz v13, :cond_21

    new-instance v3, Landroid/text/style/ScaleXSpan;

    iget v5, v13, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    invoke-direct {v3, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_21
    invoke-static {v0, v14, v2, v4}, Lkotlinx/coroutines/channels/ChannelKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    cmp-long v3, v40, v43

    if-eqz v3, :cond_22

    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-static/range {v40 .. v41}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_22
    add-int/lit8 v1, v30, 0x1

    move-object v8, v0

    move v0, v1

    move-object/from16 v2, v31

    move/from16 v11, v32

    move-object/from16 v9, v33

    move-object/from16 v10, v34

    move-object/from16 v14, v35

    move-object/from16 v13, v36

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    move-object/from16 v5, v42

    move/from16 v1, p1

    goto/16 :goto_9

    :cond_23
    :goto_13
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v42, v5

    move-object v0, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v36, v13

    move-object/from16 v35, v14

    goto :goto_14

    :cond_24
    move-object/from16 v29, v0

    goto :goto_13

    :goto_14
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-eqz v6, :cond_26

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_27

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v10, v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    if-eqz v10, :cond_25

    iget v10, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v9, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    const/4 v11, 0x0

    invoke-static {v11, v1, v10, v9}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_26
    move-object v3, v2

    :cond_27
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v1, :cond_29

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v8, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    iget v9, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    instance-of v10, v8, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    if-eqz v10, :cond_28

    new-instance v10, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v8, v8, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->verbatim:Ljava/lang/String;

    invoke-direct {v10, v8}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v8

    const/16 v10, 0x21

    invoke-virtual {v0, v8, v9, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_28
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v6, :cond_2b

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2b

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v9, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v9, v9, Landroidx/compose/ui/text/UrlAnnotation;

    if-eqz v9, :cond_2a

    iget v9, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v8, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    const/4 v11, 0x0

    invoke-static {v11, v1, v9, v8}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_2d

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/text/UrlAnnotation;

    iget v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget-object v8, v15, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v8, Ljava/util/WeakHashMap;

    invoke-virtual {v8, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2c

    new-instance v9, Landroid/text/style/URLSpan;

    iget-object v10, v5, Landroidx/compose/ui/text/UrlAnnotation;->url:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    check-cast v9, Landroid/text/style/URLSpan;

    const/16 v10, 0x21

    invoke-virtual {v0, v9, v6, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v2, v39

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/AnnotatedString;->getLinkAnnotations(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_32

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget-object v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-eq v5, v8, :cond_31

    move-object v9, v6

    check-cast v9, Landroidx/compose/ui/text/LinkAnnotation;

    instance-of v10, v9, Landroidx/compose/ui/text/LinkAnnotation$Url;

    if-eqz v10, :cond_2f

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    const-string v9, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/compose/ui/text/LinkAnnotation$Url;

    invoke-direct {v4, v5, v8, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    iget-object v9, v15, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v9, Ljava/util/WeakHashMap;

    invoke-virtual {v9, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2e

    new-instance v10, Landroid/text/style/URLSpan;

    iget-object v6, v6, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-direct {v10, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    check-cast v10, Landroid/text/style/URLSpan;

    const/16 v4, 0x21

    invoke-virtual {v0, v10, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1a

    :cond_2f
    iget-object v6, v15, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v6, Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_30

    new-instance v10, Lcom/motorola/camera/CtaPermissionHelper$1;

    invoke-direct {v10, v9}, Lcom/motorola/camera/CtaPermissionHelper$1;-><init>(Landroidx/compose/ui/text/LinkAnnotation;)V

    invoke-virtual {v6, v4, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    check-cast v10, Landroid/text/style/ClickableSpan;

    const/16 v4, 0x21

    invoke-virtual {v0, v10, v5, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1a

    :cond_31
    const/16 v4, 0x21

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_32
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->trimToSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    move-object/from16 v1, v42

    goto :goto_1b

    :cond_33
    move-object/from16 v29, v0

    move-object/from16 v25, v2

    move-object/from16 v38, v3

    move-object/from16 v26, v6

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v28, v11

    move-object/from16 v36, v13

    move-object/from16 v35, v14

    move-object/from16 v0, p0

    move-object v1, v5

    :goto_1b
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move-object/from16 v2, v38

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_34

    move-object/from16 v0, p0

    :cond_34
    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v3, v35

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :goto_1c
    move-object/from16 v0, v33

    goto :goto_1d

    :cond_35
    move-object/from16 v3, v35

    move-object/from16 v2, v38

    goto :goto_1c

    :goto_1d
    invoke-static {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getInfoStateDescriptionOrNull(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->getInfoIsCheckable(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_36

    move-object/from16 v4, p0

    :cond_36
    check-cast v4, Landroidx/compose/ui/state/ToggleableState;

    if-eqz v4, :cond_38

    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v4, v5, :cond_37

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_1e

    :cond_37
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    if-ne v4, v5, :cond_38

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_38
    :goto_1e
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_39

    move-object/from16 v4, p0

    :cond_39
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v36, :cond_3a

    move-object/from16 v13, v36

    const/4 v6, 0x4

    goto :goto_1f

    :cond_3a
    move-object/from16 v13, v36

    iget v5, v13, Landroidx/compose/ui/semantics/Role;->value:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3b

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    goto :goto_20

    :cond_3b
    :goto_1f
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_20
    move-object/from16 v4, v34

    goto :goto_21

    :cond_3c
    move-object/from16 v13, v36

    const/4 v6, 0x4

    goto :goto_20

    :goto_21
    iget-boolean v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-eqz v5, :cond_3d

    invoke-static {v6, v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_3d
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3e

    move-object/from16 v5, p0

    :cond_3e
    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3f

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_22

    :cond_3f
    move-object/from16 v5, p0

    :goto_22
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_40
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_41

    move-object/from16 v5, p0

    :cond_41
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_44

    move-object v6, v7

    :goto_23
    if-eqz v6, :cond_43

    iget-object v8, v6, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->TestTagsAsResourceId:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v10, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v10, v9}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-virtual {v8, v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_24

    :cond_42
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v6

    goto :goto_23

    :cond_43
    const/4 v6, 0x0

    :goto_24
    if-eqz v6, :cond_44

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    :cond_44
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_45

    move-object/from16 v5, p0

    :cond_45
    check-cast v5, Lkotlin/Unit;

    if-eqz v5, :cond_46

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    :cond_46
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_47

    move-object/from16 v5, p0

    :cond_47
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_48

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_25

    :cond_48
    const/4 v5, -0x1

    :goto_25
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    move/from16 v4, p1

    move-object/from16 v6, v29

    iput v4, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    :goto_26
    const/4 v9, 0x1

    goto :goto_27

    :cond_49
    move/from16 v4, p1

    move-object/from16 v6, v29

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_27

    :cond_4a
    move/from16 v4, p1

    move-object/from16 v6, v29

    goto :goto_26

    :goto_27
    invoke-static {v7}, Landroidx/compose/ui/platform/InvertMatrixKt;->isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v8

    xor-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4b

    move-object/from16 v8, p0

    :cond_4b
    if-nez v8, :cond_be

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4c

    move-object/from16 v8, p0

    :cond_4c
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/16 v9, 0x10

    if-eqz v8, :cond_56

    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4d

    move-object/from16 v10, p0

    :cond_4d
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v13, :cond_4f

    :cond_4e
    const/4 v11, 0x0

    goto :goto_28

    :cond_4f
    iget v11, v13, Landroidx/compose/ui/semantics/Role;->value:I

    const/4 v14, 0x4

    if-ne v11, v14, :cond_4e

    const/4 v11, 0x1

    :goto_28
    if-nez v11, :cond_53

    if-nez v13, :cond_51

    :cond_50
    const/4 v11, 0x0

    goto :goto_29

    :cond_51
    iget v11, v13, Landroidx/compose/ui/semantics/Role;->value:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_50

    const/4 v11, 0x1

    :goto_29
    if-eqz v11, :cond_52

    goto :goto_2a

    :cond_52
    const/4 v11, 0x0

    goto :goto_2b

    :cond_53
    :goto_2a
    const/4 v11, 0x1

    :goto_2b
    if-eqz v11, :cond_55

    if-eqz v11, :cond_54

    if-nez v10, :cond_54

    goto :goto_2c

    :cond_54
    const/4 v10, 0x0

    goto :goto_2d

    :cond_55
    :goto_2c
    const/4 v10, 0x1

    :goto_2d
    invoke-virtual {v3, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v10

    if-eqz v10, :cond_56

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v10, v9, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_56
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_57

    move-object/from16 v8, p0

    :cond_57
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_58

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v10

    if-eqz v10, :cond_58

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v11, 0x20

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_58
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_59

    move-object/from16 v8, p0

    :cond_59
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_5a

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v11, 0x4000

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_5a
    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v8

    if-eqz v8, :cond_63

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5b

    move-object/from16 v8, p0

    :cond_5b
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_5c

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v11, 0x200000

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_5c
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5d

    move-object/from16 v8, p0

    :cond_5d
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_5e

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v11, 0x1020054

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_5e
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5f

    move-object/from16 v8, p0

    :cond_5f
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_60

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v11, 0x10000

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_60
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_61

    move-object/from16 v8, p0

    :cond_61
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v8, :cond_63

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_63

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    move-result-object v10

    iget-object v10, v10, Landroidx/compose/ui/platform/AndroidClipboardManager;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v10}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v10

    if-eqz v10, :cond_62

    const-string/jumbo v11, "text/*"

    invoke-virtual {v10, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v10

    goto :goto_2e

    :cond_62
    const/4 v10, 0x0

    :goto_2e
    if-eqz v10, :cond_63

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v11, 0x8000

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_63
    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_65

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_64

    goto :goto_2f

    :cond_64
    const/4 v8, 0x0

    goto :goto_30

    :cond_65
    :goto_2f
    const/4 v8, 0x1

    :goto_30
    if-nez v8, :cond_72

    invoke-virtual {v6, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v8

    invoke-virtual {v6, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v10

    invoke-virtual {v2, v8, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->SetSelection:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_66

    move-object/from16 v8, p0

    :cond_66
    check-cast v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    if-eqz v8, :cond_67

    iget-object v8, v8, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    goto :goto_31

    :cond_67
    move-object/from16 v8, p0

    :goto_31
    const/high16 v11, 0x20000

    invoke-direct {v10, v11, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    const/16 v8, 0x100

    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 v8, 0x200

    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 v8, 0xb

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_68

    move-object/from16 v8, p0

    :cond_68
    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_6a

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_69

    goto :goto_32

    :cond_69
    const/4 v8, 0x0

    goto :goto_33

    :cond_6a
    :goto_32
    const/4 v8, 0x1

    :goto_33
    if-eqz v8, :cond_72

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-object/from16 v10, v28

    iget-object v11, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    iget-object v8, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6b

    move-object/from16 v5, p0

    :cond_6b
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    goto :goto_37

    :cond_6c
    iget-object v5, v7, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    :goto_34
    if-eqz v5, :cond_6e

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    if-eqz v8, :cond_6d

    iget-boolean v11, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    const/4 v13, 0x1

    if-ne v11, v13, :cond_6d

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    goto :goto_35

    :cond_6d
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    goto :goto_34

    :cond_6e
    move-object/from16 v5, p0

    :goto_35
    if-eqz v5, :cond_71

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    if-eqz v5, :cond_70

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v5, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6f

    move-object/from16 v5, p0

    :cond_6f
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_36

    :cond_70
    const/4 v5, 0x0

    :goto_36
    if-nez v5, :cond_71

    :goto_37
    const/4 v5, 0x1

    goto :goto_38

    :cond_71
    const/4 v5, 0x0

    :goto_38
    if-nez v5, :cond_73

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v2

    or-int/lit8 v2, v2, 0x14

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    goto :goto_39

    :cond_72
    move-object/from16 v10, v28

    :cond_73
    :goto_39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "androidx.compose.ui.semantics.id"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_75

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_74

    goto :goto_3a

    :cond_74
    const/4 v5, 0x0

    goto :goto_3b

    :cond_75
    :goto_3a
    const/4 v5, 0x1

    :goto_3b
    if-nez v5, :cond_76

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v12, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    const-string v5, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    const-string v5, "androidx.compose.ui.semantics.testTag"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v5, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_78

    move-object/from16 v2, p0

    :cond_78
    check-cast v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    const/4 v5, 0x0

    if-eqz v2, :cond_7e

    iget-object v8, v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v12, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_79

    const-string v12, "android.widget.SeekBar"

    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_3c

    :cond_79
    const-string v12, "android.widget.ProgressBar"

    invoke-virtual {v1, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :goto_3c
    sget-object v12, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    if-eq v2, v12, :cond_7a

    iget v2, v8, Lkotlin/ranges/ClosedFloatRange;->_start:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget v12, v8, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    const/4 v13, 0x1

    invoke-static {v13, v2, v12, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_7a
    iget-object v2, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget v2, v8, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget v11, v8, Lkotlin/ranges/ClosedFloatRange;->_start:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    cmpg-float v12, v2, v11

    if-gez v12, :cond_7b

    move v2, v11

    :cond_7b
    cmpg-float v2, v5, v2

    if-gez v2, :cond_7c

    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_7c
    iget v2, v8, Lkotlin/ranges/ClosedFloatRange;->_start:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget v8, v8, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    cmpl-float v11, v2, v8

    if-lez v11, :cond_7d

    move v2, v8

    :cond_7d
    cmpl-float v2, v5, v2

    if-lez v2, :cond_7e

    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_7e
    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-eqz v2, :cond_80

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7f

    move-object/from16 v2, p0

    :cond_7f
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_80

    new-instance v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v11, 0x102003d

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v8, v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_80
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_81

    move-object/from16 v2, p0

    :cond_81
    check-cast v2, Landroidx/compose/ui/semantics/CollectionInfo;

    if-eqz v2, :cond_82

    iget v8, v2, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    iget v2, v2, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    const/4 v11, 0x0

    invoke-static {v8, v2, v11}, Lcom/google/firebase/components/Component$$Lambda$2;->obtain(III)Lcom/google/firebase/components/Component$$Lambda$2;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Lcom/google/firebase/components/Component$$Lambda$2;)V

    goto :goto_41

    :cond_82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_83

    move-object/from16 v8, p0

    :cond_83
    if-eqz v8, :cond_85

    const/4 v14, 0x4

    invoke-static {v14, v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3d
    if-ge v12, v11, :cond_85

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v14, v14, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v14, v15}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_84

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    :cond_85
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_88

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpa;->calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_86

    const/4 v11, 0x1

    goto :goto_3e

    :cond_86
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_3e
    if-eqz v8, :cond_87

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3f
    const/4 v8, 0x0

    goto :goto_40

    :cond_87
    const/4 v2, 0x1

    goto :goto_3f

    :goto_40
    invoke-static {v11, v2, v8}, Lcom/google/firebase/components/Component$$Lambda$2;->obtain(III)Lcom/google/firebase/components/Component$$Lambda$2;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Lcom/google/firebase/components/Component$$Lambda$2;)V

    :cond_88
    :goto_41
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_89

    move-object/from16 v2, p0

    :cond_89
    if-nez v2, :cond_bd

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    if-nez v2, :cond_8b

    :cond_8a
    :goto_42
    move/from16 v16, v5

    goto/16 :goto_46

    :cond_8b
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8c

    move-object/from16 v8, p0

    :cond_8c
    if-eqz v8, :cond_8a

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8d

    move-object/from16 v8, p0

    :cond_8d
    check-cast v8, Landroidx/compose/ui/semantics/CollectionInfo;

    if-eqz v8, :cond_8e

    iget v11, v8, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    if-ltz v11, :cond_8a

    iget v8, v8, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    if-gez v8, :cond_8e

    goto :goto_42

    :cond_8e
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    goto :goto_42

    :cond_8f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x4

    invoke-static {v14, v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_43
    if-ge v12, v11, :cond_91

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v15

    move/from16 v16, v5

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v15, v15, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v15, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v14, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui_release()I

    move-result v5

    iget-object v14, v7, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui_release()I

    move-result v14

    if-ge v5, v14, :cond_90

    add-int/lit8 v13, v13, 0x1

    :cond_90
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto :goto_43

    :cond_91
    move/from16 v16, v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpa;->calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_92

    const/4 v5, 0x0

    goto :goto_44

    :cond_92
    move v5, v13

    :goto_44
    if-eqz v2, :cond_93

    goto :goto_45

    :cond_93
    const/4 v13, 0x0

    :goto_45
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_94

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_94
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v8, 0x1

    invoke-static {v5, v8, v13, v8, v2}, Landroidx/room/ObservedTableVersions;->obtain(IIIIZ)Landroidx/room/ObservedTableVersions;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/room/ObservedTableVersions;)V

    :cond_95
    :goto_46
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v5, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_96

    move-object/from16 v2, p0

    :cond_96
    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_97

    move-object/from16 v5, p0

    :cond_97
    check-cast v5, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_a1

    if-eqz v5, :cond_a1

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_98

    move-object/from16 v8, p0

    :cond_98
    if-nez v8, :cond_9b

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_99

    move-object/from16 v8, p0

    :cond_99
    if-eqz v8, :cond_9a

    goto :goto_47

    :cond_9a
    const/4 v8, 0x0

    goto :goto_48

    :cond_9b
    :goto_47
    const/4 v8, 0x1

    :goto_48
    if-nez v8, :cond_9c

    const-string v8, "android.widget.HorizontalScrollView"

    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_9c
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v16

    if-lez v8, :cond_9d

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_9d
    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v8

    if-eqz v8, :cond_a1

    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v8

    if-eqz v8, :cond_9f

    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v8

    if-nez v8, :cond_9e

    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_49

    :cond_9e
    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    :goto_49
    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_9f
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v2

    if-eqz v2, :cond_a1

    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-nez v2, :cond_a0

    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_4a

    :cond_a0
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    :goto_4a
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_a1
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v10, v2}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-eqz v2, :cond_a9

    if-eqz v5, :cond_a9

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v5, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a2

    move-object/from16 v5, p0

    :cond_a2
    if-nez v5, :cond_a5

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v5, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a3

    move-object/from16 v5, p0

    :cond_a3
    if-eqz v5, :cond_a4

    goto :goto_4b

    :cond_a4
    const/4 v5, 0x0

    goto :goto_4c

    :cond_a5
    :goto_4b
    const/4 v5, 0x1

    :goto_4c
    if-nez v5, :cond_a6

    const-string v5, "android.widget.ScrollView"

    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_a6
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getMaxValue()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v16

    const/4 v13, 0x1

    if-lez v5, :cond_a7

    invoke-virtual {v1, v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_a7
    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollForward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v5

    if-eqz v5, :cond_a8

    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_a8
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->populateAccessibilityNodeInfoProperties$canScrollBackward(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    move-result v2

    if-eqz v2, :cond_aa

    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_4d

    :cond_a9
    const/4 v13, 0x1

    :cond_aa
    :goto_4d
    invoke-static {v1, v7}, Landroidx/compose/ui/platform/InvertMatrixKt;->addPageActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v2, v5}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v2, v5}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_ab

    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v8, 0x40000

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v5, v8, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_ab
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v2, v5}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_ac

    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v8, 0x80000

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v5, v8, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_ac
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v2, v5}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_ad

    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v8, 0x100000

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v5, v8, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_ad
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v5}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sget-object v8, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->AccessibilityActionsResourceIds:Landroidx/collection/MutableIntList;

    iget v10, v8, Landroidx/collection/MutableIntList;->_size:I

    if-ge v5, v10, :cond_b6

    new-instance v5, Landroidx/collection/SparseArrayCompat;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    move-result-object v10

    move-object/from16 v11, v26

    iget-object v12, v11, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v14, v11, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v14, v4, v12}, Landroidx/collection/internal/RuntimeHelpersKt;->binarySearch(II[I)I

    move-result v12

    if-ltz v12, :cond_ae

    goto :goto_4e

    :cond_ae
    const/4 v13, 0x0

    :goto_4e
    if-eqz v13, :cond_b4

    invoke-virtual {v11, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/collection/MutableObjectIntMap;

    new-array v9, v9, [I

    iget-object v13, v8, Landroidx/collection/MutableIntList;->content:[I

    iget v8, v8, Landroidx/collection/MutableIntList;->_size:I

    move-object v15, v9

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_4f
    if-ge v9, v8, :cond_b0

    aget v16, v13, v9

    move/from16 v18, v8

    add-int/lit8 v8, v14, 0x1

    move/from16 v19, v9

    array-length v9, v15

    if-ge v9, v8, :cond_af

    array-length v9, v15

    const/16 v24, 0x3

    mul-int/lit8 v9, v9, 0x3

    const/16 v17, 0x2

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v15, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    const-string v15, "copyOf(...)"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v9

    goto :goto_50

    :cond_af
    const/16 v17, 0x2

    const/16 v24, 0x3

    :goto_50
    aput v16, v15, v14

    add-int/lit8 v9, v19, 0x1

    move v14, v8

    move/from16 v8, v18

    goto :goto_4f

    :cond_b0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    if-gtz v9, :cond_b3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b1

    goto :goto_51

    :cond_b1
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    if-lez v14, :cond_b2

    aget v0, v15, v9

    throw p0

    :cond_b2
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    throw p0

    :cond_b3
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw p0

    :cond_b4
    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v12

    if-gtz v12, :cond_b5

    :goto_51
    iget-object v2, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v4, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    invoke-virtual {v11, v4, v10}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_52

    :cond_b5
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroidx/collection/MutableIntList;->get(I)I

    throw p0

    :cond_b6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t have more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Landroidx/collection/MutableIntList;->_size:I

    const-string v3, " custom actions for one widget"

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7
    :goto_52
    invoke-static {v7, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isScreenReaderFocusable(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToBeforeMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, v4}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    move-result v0

    const/4 v15, -0x1

    if-eq v0, v15, :cond_b9

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    move-result-object v2

    if-eqz v2, :cond_b8

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    move-object/from16 v2, v25

    goto :goto_53

    :cond_b8
    move-object/from16 v2, v25

    invoke-virtual {v3, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :goto_53
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalBeforeVal:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-virtual {v6, v4, v1, v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_54

    :cond_b9
    move-object/from16 v5, p0

    move-object/from16 v2, v25

    :goto_54
    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->idToAfterMap:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, v4}, Landroidx/collection/MutableIntIntMap;->getOrDefault(I)I

    move-result v0

    const/4 v15, -0x1

    if-eq v0, v15, :cond_ba

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    move-result-object v0

    if-eqz v0, :cond_ba

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    iget-object v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->ExtraDataTestTraversalAfterVal:Ljava/lang/String;

    invoke-virtual {v6, v4, v1, v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->addExtraDataToAccessibilityNodeInfoHelper(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_ba
    :goto_55
    iget-boolean v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendingFocusAffectingEvent:Z

    if-eqz v0, :cond_bc

    iget v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    if-ne v4, v0, :cond_bb

    iput-object v1, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    :cond_bb
    iget v0, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    if-ne v4, v0, :cond_bc

    iput-object v1, v6, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    :cond_bc
    return-object v1

    :cond_bd
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_be
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_bf
    move v4, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "semanticsNode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has null parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    move v4, v1

    invoke-direct/range {p0 .. p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo$androidx$customview$widget$ExploreByTouchHelper$MyNodeProvider(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown focus type: "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget p1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_1

    :cond_3
    iget p1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    :goto_1
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->$r8$classId:I

    const/16 v7, 0x80

    const/16 v8, 0x40

    const/4 v10, 0x2

    iget-object v0, v0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/core/view/AccessibilityDelegateCompat;

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v4, :pswitch_data_0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    const/16 p0, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v5, :cond_7d

    iget-object v5, v5, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    if-nez v5, :cond_0

    goto/16 :goto_40

    :cond_0
    iget v12, v5, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    iget-object v11, v5, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v6, v11, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    const/4 v9, 0x0

    if-eq v2, v8, :cond_7e

    if-eq v2, v7, :cond_7c

    const/16 v8, 0x200

    const/16 v7, 0x100

    if-eq v2, v7, :cond_5e

    if-eq v2, v8, :cond_5e

    const/16 v7, 0x4000

    if-eq v2, v7, :cond_5c

    const/high16 v7, 0x20000

    if-eq v2, v7, :cond_58

    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_40

    :cond_1
    if-eq v2, v14, :cond_56

    if-eq v2, v10, :cond_54

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->actionIdToLabel:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_7d

    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    goto/16 :goto_40

    :cond_2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CustomActions:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v9, v0

    :goto_0
    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_4

    goto/16 :goto_40

    :cond_4
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_5

    goto/16 :goto_40

    :cond_5
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v9, v0

    :goto_1
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :pswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v9, v0

    :goto_2
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :pswitch_2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v9, v0

    :goto_3
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :pswitch_3
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v9, v0

    :goto_4
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move-object v9, v0

    :goto_5
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_1
    if-eqz v3, :cond_7d

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_40

    :cond_b
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    move-object v9, v1

    :goto_6
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v1, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_7d

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_2
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    move-object v1, v9

    :cond_d
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_7

    :cond_e
    move-object v1, v9

    :goto_7
    if-eqz v0, :cond_11

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v1, v9

    :cond_10
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_7

    :cond_11
    :goto_8
    if-nez v0, :cond_12

    goto/16 :goto_40

    :cond_12
    iget-object v2, v0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-static {v3}, Landroidx/compose/ui/layout/ScaleFactorKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_13

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v10

    goto :goto_9

    :cond_13
    move-wide v10, v6

    :goto_9
    invoke-virtual {v3, v10, v11}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    iget-boolean v4, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_14

    goto :goto_a

    :cond_14
    move-object v3, v9

    :goto_a
    if-eqz v3, :cond_15

    invoke-virtual {v3, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v3

    goto :goto_b

    :cond_15
    move-wide v3, v6

    :goto_b
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v8

    if-eqz v8, :cond_16

    iget-wide v6, v8, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    :cond_16
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v2, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_17

    move-object v4, v9

    :cond_17
    check-cast v4, Landroidx/compose/ui/semantics/ScrollAxisRange;

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v2, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_c

    :cond_18
    move-object v9, v2

    :goto_c
    check-cast v9, Landroidx/compose/ui/semantics/ScrollAxisRange;

    iget v2, v3, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v2, v4

    iget v4, v3, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v6, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr v4, v6

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-nez v6, :cond_1a

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_19

    goto :goto_d

    :cond_19
    move v2, v4

    goto :goto_d

    :cond_1a
    move/from16 v2, p0

    :goto_d
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v4

    if-eqz v4, :cond_1b

    neg-float v2, v2

    :cond_1b
    iget v4, v3, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v5, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v4, v5

    iget v3, v3, Landroidx/compose/ui/geometry/Rect;->bottom:F

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr v3, v0

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpg-float v0, v0, v5

    if-nez v0, :cond_1d

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1c

    move v15, v4

    goto :goto_e

    :cond_1c
    move v15, v3

    goto :goto_e

    :cond_1d
    move/from16 v15, p0

    :goto_e
    if-eqz v1, :cond_7d

    iget-object v0, v1, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_7d

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_3
    if-eqz v3, :cond_1e

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1e
    move-object v0, v9

    :goto_f
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_10

    :cond_1f
    move-object v9, v1

    :goto_10
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v1, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_7d

    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    if-nez v0, :cond_20

    const-string v0, ""

    :cond_20
    invoke-direct {v2, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_4
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_11

    :cond_21
    move-object v9, v0

    :goto_11
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Collapse:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_12

    :cond_22
    move-object v9, v0

    :goto_12
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_6
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Expand:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_13

    :cond_23
    move-object v9, v0

    :goto_13
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_7
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CutText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_14

    :cond_24
    move-object v9, v0

    :goto_14
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_8
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PasteText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_15

    :cond_25
    move-object v9, v0

    :goto_15
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :pswitch_4
    :sswitch_9
    const/16 v0, 0x1000

    if-ne v2, v0, :cond_26

    move v0, v14

    goto :goto_16

    :cond_26
    move v0, v13

    :goto_16
    const/16 v1, 0x2000

    if-ne v2, v1, :cond_27

    move v1, v14

    goto :goto_17

    :cond_27
    move v1, v13

    :goto_17
    const v3, 0x1020039

    if-ne v2, v3, :cond_28

    move v3, v14

    goto :goto_18

    :cond_28
    move v3, v13

    :goto_18
    const v4, 0x102003b

    if-ne v2, v4, :cond_29

    move v4, v14

    goto :goto_19

    :cond_29
    move v4, v13

    :goto_19
    const v7, 0x1020038

    if-ne v2, v7, :cond_2a

    move v7, v14

    goto :goto_1a

    :cond_2a
    move v7, v13

    :goto_1a
    const v8, 0x102003a

    if-ne v2, v8, :cond_2b

    move v2, v14

    goto :goto_1b

    :cond_2b
    move v2, v13

    :goto_1b
    if-nez v3, :cond_2d

    if-nez v4, :cond_2d

    if-nez v0, :cond_2d

    if-eqz v1, :cond_2c

    goto :goto_1c

    :cond_2c
    move v8, v13

    goto :goto_1d

    :cond_2d
    :goto_1c
    move v8, v14

    :goto_1d
    if-nez v7, :cond_2f

    if-nez v2, :cond_2f

    if-nez v0, :cond_2f

    if-eqz v1, :cond_2e

    goto :goto_1e

    :cond_2e
    move v14, v13

    :cond_2f
    :goto_1e
    if-nez v0, :cond_30

    if-eqz v1, :cond_36

    :cond_30
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_31

    move-object v0, v9

    :cond_31
    check-cast v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetProgress:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32

    move-object v2, v9

    :cond_32
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v0, :cond_36

    iget-object v0, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatRange;

    if-eqz v2, :cond_36

    iget v3, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    cmpg-float v4, v3, v0

    if-gez v4, :cond_33

    move v4, v0

    goto :goto_1f

    :cond_33
    move v4, v3

    :goto_1f
    cmpl-float v5, v0, v3

    if-lez v5, :cond_34

    goto :goto_20

    :cond_34
    move v3, v0

    :goto_20
    sub-float/2addr v4, v3

    const/16 v0, 0x14

    int-to-float v0, v0

    div-float/2addr v4, v0

    if-eqz v1, :cond_35

    neg-float v4, v4

    :cond_35
    iget-object v0, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_7d

    add-float v15, p0, v4

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :cond_36
    iget-object v0, v5, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-static {v0}, Landroidx/compose/ui/layout/ScaleFactorKt;->boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->GetScrollViewportLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    move-object v2, v9

    :cond_37
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_38

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_38

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_21

    :cond_38
    move-object v0, v9

    :goto_21
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_39

    move-object v2, v9

    :cond_39
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-nez v2, :cond_3a

    goto/16 :goto_40

    :cond_3a
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v12}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3b

    move-object v12, v9

    :cond_3b
    check-cast v12, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-eqz v12, :cond_46

    if-eqz v8, :cond_46

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move/from16 p1, v14

    goto :goto_22

    :cond_3c
    const/16 v8, 0x20

    move/from16 p1, v14

    shr-long v13, v10, v8

    long-to-int v8, v13

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    :goto_22
    if-nez v3, :cond_3d

    if-eqz v1, :cond_3e

    :cond_3d
    neg-float v8, v8

    :cond_3e
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->isRtl(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v5

    if-eqz v5, :cond_40

    if-nez v3, :cond_3f

    if-eqz v4, :cond_40

    :cond_3f
    neg-float v8, v8

    :cond_40
    invoke-static {v12, v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result v3

    if-eqz v3, :cond_47

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_23

    :cond_41
    check-cast v2, Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_7d

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :cond_42
    :goto_23
    cmpl-float v1, v8, p0

    if-lez v1, :cond_44

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_43

    goto :goto_24

    :cond_43
    move-object v9, v0

    :goto_24
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_26

    :cond_44
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_25

    :cond_45
    move-object v9, v0

    :goto_25
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    :goto_26
    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :cond_46
    move/from16 p1, v14

    :cond_47
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_48

    move-object v3, v9

    :cond_48
    check-cast v3, Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-eqz v3, :cond_7d

    if-eqz p1, :cond_7d

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_27

    :cond_49
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v10

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    :goto_27
    if-nez v7, :cond_4a

    if-eqz v1, :cond_4b

    :cond_4a
    neg-float v0, v0

    :cond_4b
    invoke-static {v3, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->performActionHelper$canScroll(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    move-result v1

    if-eqz v1, :cond_7d

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_28

    :cond_4c
    check-cast v2, Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_7d

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v15, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :cond_4d
    :goto_28
    cmpl-float v0, v0, p0

    if-lez v0, :cond_4f

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4e

    goto :goto_29

    :cond_4e
    move-object v9, v0

    :goto_29
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    goto :goto_2b

    :cond_4f
    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_50

    goto :goto_2a

    :cond_50
    move-object v9, v0

    :goto_2a
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    :goto_2b
    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_a
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_51

    goto :goto_2c

    :cond_51
    move-object v9, v0

    :goto_2c
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :sswitch_b
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_52

    move-object v2, v9

    :cond_52
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_53

    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_53

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :goto_2d
    const/16 v3, 0xc

    goto :goto_2e

    :cond_53
    move-object v2, v9

    goto :goto_2d

    :goto_2e
    invoke-static {v0, v1, v14, v9, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :cond_54
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_55

    goto :goto_2f

    :cond_55
    move-object v9, v0

    :goto_2f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1, v14}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    :goto_30
    move v13, v14

    goto/16 :goto_42

    :cond_56
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_57

    goto :goto_31

    :cond_57
    move-object v9, v0

    :goto_31
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :cond_58
    if-eqz v3, :cond_59

    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v1, v19

    goto :goto_32

    :cond_59
    const/4 v2, -0x1

    move v1, v2

    :goto_32
    if-eqz v3, :cond_5a

    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_33
    const/4 v3, 0x0

    goto :goto_34

    :cond_5a
    const/4 v2, -0x1

    goto :goto_33

    :goto_34
    invoke-virtual {v0, v5, v1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v0, v12}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v2

    const/16 v4, 0xc

    invoke-static {v0, v2, v3, v9, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    :cond_5b
    move v13, v1

    goto/16 :goto_42

    :cond_5c
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->CopyText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5d

    goto :goto_35

    :cond_5d
    move-object v9, v0

    :goto_35
    check-cast v9, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v9, :cond_7d

    iget-object v0, v9, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_42

    :cond_5e
    if-eqz v3, :cond_7d

    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v13, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {v3, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v7, :cond_5f

    move v2, v14

    goto :goto_36

    :cond_5f
    const/4 v2, 0x0

    :goto_36
    iget-object v13, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    if-nez v13, :cond_60

    :goto_37
    const/4 v13, -0x1

    goto :goto_38

    :cond_60
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v12, v13, :cond_61

    goto :goto_37

    :goto_38
    iput v13, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityCursorPosition:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->previousTraversedNode:Ljava/lang/Integer;

    :cond_61
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7d

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_62

    goto/16 :goto_40

    :cond_62
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIterableTextForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_70

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_63

    goto/16 :goto_39

    :cond_63
    if-eq v1, v14, :cond_6e

    if-eq v1, v10, :cond_6c

    const/4 v4, 0x3

    const/4 v10, 0x4

    if-eq v1, v10, :cond_66

    const/16 v15, 0x8

    if-eq v1, v15, :cond_64

    const/16 v15, 0x10

    if-eq v1, v15, :cond_66

    goto/16 :goto_39

    :cond_64
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v9, :cond_65

    new-instance v9, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v9, v4}, Lcom/motorola/camera/CameraInUseBroadcaster;-><init>(I)V

    sput-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    :cond_65
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v9, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    goto/16 :goto_39

    :cond_66
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v15}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_67

    goto/16 :goto_39

    :cond_67
    invoke-static {v11}, Landroidx/compose/ui/platform/InvertMatrixKt;->getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v11

    if-nez v11, :cond_68

    goto/16 :goto_39

    :cond_68
    if-ne v1, v10, :cond_6a

    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    if-nez v9, :cond_69

    new-instance v9, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    invoke-direct {v9, v4}, Lcom/motorola/camera/CameraInUseBroadcaster;-><init>(I)V

    sput-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    :cond_69
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->lineInstance:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.LineTextSegmentIterator"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v9, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    iput-object v11, v9, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    goto :goto_39

    :cond_6a
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    if-nez v9, :cond_6b

    new-instance v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    invoke-direct {v9, v4}, Lcom/motorola/camera/CameraInUseBroadcaster;-><init>(I)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    sput-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    :cond_6b
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->pageInstance:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v9, Lcom/motorola/camera/CameraInUseBroadcaster;->permission:Ljava/lang/Object;

    iput-object v11, v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iput-object v5, v9, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_39

    :cond_6c
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v9, :cond_6d

    new-instance v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    invoke-static {v4}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v4

    iput-object v4, v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    sput-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    :cond_6d
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.WordTextSegmentIterator"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_39

    :cond_6e
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v9, :cond_6f

    new-instance v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v9, v14}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;-><init>(I)V

    invoke-static {v4}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v4

    iput-object v4, v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    sput-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    :cond_6f
    sget-object v9, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->instance$1:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.CharacterTextSegmentIterator"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    :cond_70
    :goto_39
    if-nez v9, :cond_71

    goto/16 :goto_40

    :cond_71
    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionEnd(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v4

    const/4 v13, -0x1

    if-ne v4, v13, :cond_73

    if-eqz v2, :cond_72

    const/4 v4, 0x0

    goto :goto_3a

    :cond_72
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    :cond_73
    :goto_3a
    if-eqz v2, :cond_74

    invoke-virtual {v9, v4}, Lcom/motorola/camera/CameraInUseBroadcaster;->following(I)[I

    move-result-object v4

    goto :goto_3b

    :cond_74
    invoke-virtual {v9, v4}, Lcom/motorola/camera/CameraInUseBroadcaster;->preceding(I)[I

    move-result-object v4

    :goto_3b
    if-nez v4, :cond_75

    goto/16 :goto_40

    :cond_75
    const/16 v21, 0x0

    aget v20, v4, v21

    aget v21, v4, v14

    if-eqz v3, :cond_79

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getAccessibilitySelectionStart(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_77

    if-eqz v2, :cond_76

    move/from16 v3, v20

    goto :goto_3c

    :cond_76
    move/from16 v3, v21

    :cond_77
    :goto_3c
    if-eqz v2, :cond_78

    move/from16 v4, v21

    goto :goto_3e

    :cond_78
    move/from16 v4, v20

    goto :goto_3e

    :cond_79
    if-eqz v2, :cond_7a

    move/from16 v3, v21

    goto :goto_3d

    :cond_7a
    move/from16 v3, v20

    :goto_3d
    move v4, v3

    :goto_3e
    if-eqz v2, :cond_7b

    move/from16 v18, v7

    goto :goto_3f

    :cond_7b
    move/from16 v18, v8

    :goto_3f
    new-instance v16, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move/from16 v19, v1

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v23}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingTextTraversedEvent:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    invoke-virtual {v0, v1, v3, v4, v14}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->setAccessibilitySelection(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    goto/16 :goto_30

    :cond_7c
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    if-ne v2, v1, :cond_7d

    const/high16 v2, -0x80000000

    iput v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    iput-object v9, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const/high16 v2, 0x10000

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v9, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto/16 :goto_30

    :cond_7d
    :goto_40
    const/4 v13, 0x0

    goto :goto_42

    :cond_7e
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_7d

    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    if-ne v2, v1, :cond_7f

    goto :goto_40

    :cond_7f
    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_80

    const/high16 v3, 0x10000

    const/16 v5, 0xc

    invoke-static {v0, v2, v3, v9, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto :goto_41

    :cond_80
    const/16 v5, 0xc

    :goto_41
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const v2, 0x8000

    invoke-static {v0, v1, v2, v9, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->sendEventForVirtualView$default(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    goto/16 :goto_30

    :goto_42
    return v13

    :pswitch_5
    check-cast v0, Landroidx/customview/widget/ExploreByTouchHelper;

    iget-object v4, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Lcom/google/android/material/chip/Chip;

    const/4 v13, -0x1

    if-eq v1, v13, :cond_8b

    if-eq v2, v14, :cond_8a

    if-eq v2, v10, :cond_89

    if-eq v2, v8, :cond_86

    if-eq v2, v7, :cond_85

    check-cast v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    iget-object v0, v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    const/16 v15, 0x10

    if-ne v2, v15, :cond_83

    if-nez v1, :cond_81

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v13

    goto/16 :goto_46

    :cond_81
    if-ne v1, v14, :cond_83

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_82

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v13, v14

    goto :goto_43

    :cond_82
    move v13, v3

    :goto_43
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-eqz v1, :cond_8c

    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, v14, v14}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    goto :goto_46

    :cond_83
    const/4 v3, 0x0

    :cond_84
    :goto_44
    move v13, v3

    goto :goto_46

    :cond_85
    const/4 v3, 0x0

    iget v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v2, v1, :cond_84

    const/high16 v2, -0x80000000

    iput v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :goto_45
    move v13, v14

    goto :goto_46

    :cond_86
    const/4 v3, 0x0

    iget-object v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_87

    goto :goto_44

    :cond_87
    iget v2, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v2, v1, :cond_84

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_88

    iput v5, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :cond_88
    iput v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    goto :goto_45

    :cond_89
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v13

    goto :goto_46

    :cond_8a
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v13

    goto :goto_46

    :cond_8b
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v13

    :cond_8c
    :goto_46
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_5
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_3
        0x1020036 -> :sswitch_2
        0x102003d -> :sswitch_1
        0x1020054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1020046
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
