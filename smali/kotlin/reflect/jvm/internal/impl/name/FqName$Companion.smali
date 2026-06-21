.class public abstract Lkotlin/reflect/jvm/internal/impl/name/FqName$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final populate(Landroid/view/ViewStructure;Landroidx/compose/ui/node/LayoutNode;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    const/4 v10, 0x2

    const/16 v13, 0x8

    if-eqz v4, :cond_13

    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    if-eqz v4, :cond_13

    const-wide/16 v16, 0x80

    iget-object v5, v4, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v6, v4, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v4, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    const-wide/16 v18, 0xff

    array-length v7, v4

    sub-int/2addr v7, v10

    move/from16 v30, v10

    if-ltz v7, :cond_11

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x7

    :goto_0
    aget-wide v9, v4, v8

    const-wide v31, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v11, v9

    shl-long v11, v11, v29

    and-long/2addr v11, v9

    and-long v11, v11, v31

    cmp-long v11, v11, v31

    if-eqz v11, :cond_10

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_f

    and-long v33, v9, v18

    cmp-long v33, v33, v16

    if-gez v33, :cond_d

    shl-int/lit8 v33, v8, 0x3

    add-int v33, v33, v12

    aget-object v34, v5, v33

    aget-object v14, v6, v33

    move-object/from16 v15, v34

    check-cast v15, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move/from16 v34, v13

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "null cannot be cast to non-null type androidx.compose.ui.autofill.ContentDataType"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v14

    check-cast v20, Landroidx/compose/ui/autofill/AndroidContentDataType;

    goto/16 :goto_2

    :cond_0
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/util/List;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_e

    invoke-virtual {v0, v13}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "null cannot be cast to non-null type androidx.compose.ui.autofill.ContentType"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v14

    check-cast v23, Landroidx/compose/ui/autofill/ContentType;

    goto/16 :goto_2

    :cond_2
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "null cannot be cast to non-null type androidx.compose.ui.text.AnnotatedString"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v14

    check-cast v28, Landroidx/compose/ui/text/AnnotatedString;

    goto/16 :goto_2

    :cond_3
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v13, :cond_4

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setFocused(Z)V

    goto/16 :goto_2

    :cond_4
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v27, v14

    check-cast v27, Ljava/lang/Integer;

    goto/16 :goto_2

    :cond_5
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v26, 0x1

    goto/16 :goto_2

    :cond_6
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.semantics.Role"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v14

    check-cast v25, Landroidx/compose/ui/semantics/Role;

    goto :goto_2

    :cond_7
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v14

    check-cast v24, Ljava/lang/Boolean;

    goto :goto_2

    :cond_8
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.state.ToggleableState"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v14

    check-cast v22, Landroidx/compose/ui/state/ToggleableState;

    goto :goto_2

    :cond_9
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setClickable(Z)V

    goto :goto_2

    :cond_a
    const/4 v2, 0x1

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    goto :goto_2

    :cond_b
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setFocusable(Z)V

    goto :goto_2

    :cond_c
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v21, 0x1

    goto :goto_2

    :cond_d
    move/from16 v34, v13

    :cond_e
    :goto_2
    shr-long v9, v9, v34

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v34

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_f
    move v2, v13

    if-ne v11, v2, :cond_12

    :cond_10
    if-eq v8, v7, :cond_12

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    const/16 v13, 0x8

    goto/16 :goto_0

    :cond_11
    const/16 v29, 0x7

    const-wide v31, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :cond_12
    move-object/from16 v2, v22

    move-object/from16 v4, v25

    move-object/from16 v5, v28

    goto :goto_3

    :cond_13
    move/from16 v30, v10

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const/16 v29, 0x7

    const-wide v31, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_3
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-boolean v7, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-eqz v7, :cond_17

    iget-boolean v7, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    if-eqz v7, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->copy()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    new-instance v7, Landroidx/collection/MutableObjectList;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v8, v8, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v8, v8, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-direct {v7, v8}, Landroidx/collection/MutableObjectList;-><init>(I)V

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/collection/MutableObjectList;->addAll(Ljava/util/List;)V

    :cond_15
    :goto_4
    iget v8, v7, Landroidx/collection/MutableObjectList;->_size:I

    if-eqz v8, :cond_17

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-boolean v10, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-eqz v10, :cond_16

    goto :goto_4

    :cond_16
    invoke-virtual {v6, v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->mergeChild$ui_release(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    iget-boolean v9, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    if-nez v9, :cond_15

    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/collection/MutableObjectList;->addAll(Ljava/util/List;)V

    goto :goto_4

    :cond_17
    :goto_5
    if-eqz v6, :cond_1d

    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    if-eqz v6, :cond_1d

    iget-object v7, v6, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v8, v6, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v6, v6, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v9, v6

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_1d

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    aget-wide v12, v6, v10

    not-long v14, v12

    shl-long v14, v14, v29

    and-long/2addr v14, v12

    and-long v14, v14, v31

    cmp-long v14, v14, v31

    if-eqz v14, :cond_1c

    sub-int v14, v10, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v34, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_1b

    and-long v35, v12, v18

    cmp-long v22, v35, v16

    if-gez v22, :cond_1a

    shl-int/lit8 v22, v10, 0x3

    add-int v22, v22, v15

    aget-object v25, v7, v22

    move-object/from16 v28, v3

    aget-object v3, v8, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v25

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-object/from16 v25, v7

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/ViewStructure;->setEnabled(Z)V

    goto :goto_8

    :cond_18
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v6, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString>"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    check-cast v11, Ljava/util/List;

    :cond_19
    :goto_8
    const/16 v3, 0x8

    goto :goto_9

    :cond_1a
    move-object/from16 v28, v3

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    goto :goto_8

    :goto_9
    shr-long/2addr v12, v3

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v22

    move-object/from16 v7, v25

    move-object/from16 v3, v28

    goto :goto_7

    :cond_1b
    move-object/from16 v28, v3

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    const/16 v3, 0x8

    if-ne v14, v3, :cond_1e

    goto :goto_a

    :cond_1c
    move-object/from16 v28, v3

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    const/16 v3, 0x8

    :goto_a
    if-eq v10, v9, :cond_1e

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v22

    move-object/from16 v7, v25

    move-object/from16 v3, v28

    goto :goto_6

    :cond_1d
    move-object/from16 v28, v3

    const/4 v11, 0x0

    :cond_1e
    iget v3, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    if-nez v6, :cond_1f

    const/4 v3, 0x0

    :cond_1f
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_b
    move-object/from16 v6, p2

    goto :goto_c

    :cond_20
    const/4 v3, -0x1

    goto :goto_b

    :goto_c
    invoke-virtual {v0, v6, v3}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    move-object/from16 v6, p3

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v6, v7, v7}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_21

    :goto_d
    move-object/from16 v3, v28

    goto :goto_e

    :cond_21
    if-eqz v21, :cond_22

    goto :goto_d

    :cond_22
    if-eqz v2, :cond_23

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_e

    :cond_23
    move-object v3, v7

    :goto_e
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setAutofillType(I)V

    :cond_24
    if-eqz v23, :cond_25

    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/autofill/ContentType_androidKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    :cond_25
    move-object/from16 v3, p4

    iget-object v3, v3, Landroidx/compose/ui/spatial/RectManager;->rects:Lcom/google/common/base/Splitter;

    iget v6, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    new-instance v7, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v6, v7}, Lcom/google/common/base/Splitter;->withRect(ILkotlin/jvm/functions/Function4;)V

    if-eqz v24, :cond_26

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setSelected(Z)V

    :cond_26
    const/4 v7, 0x4

    if-eqz v2, :cond_28

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setCheckable(Z)V

    sget-object v3, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v2, v3, :cond_27

    const/4 v2, 0x1

    goto :goto_f

    :cond_27
    move v2, v8

    :goto_f
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    goto :goto_11

    :cond_28
    if-eqz v24, :cond_2b

    if-nez v4, :cond_2a

    :cond_29
    const/4 v2, 0x1

    goto :goto_10

    :cond_2a
    iget v2, v4, Landroidx/compose/ui/semantics/Role;->value:I

    if-ne v2, v7, :cond_29

    goto :goto_11

    :goto_10
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setCheckable(Z)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    :cond_2b
    :goto_11
    sget-object v2, Landroidx/compose/ui/autofill/ContentType;->Companion:Landroidx/compose/ui/autofill/ContentType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/autofill/ContentType$Companion;->Password:Landroidx/compose/ui/autofill/AndroidContentType;

    invoke-static {v2}, Landroidx/compose/ui/autofill/ContentType_androidKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v23, :cond_2c

    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/autofill/ContentType_androidKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x1

    goto :goto_12

    :cond_2c
    move v2, v8

    :goto_12
    if-nez v26, :cond_2e

    if-eqz v2, :cond_2d

    goto :goto_13

    :cond_2d
    move v2, v8

    goto :goto_14

    :cond_2e
    :goto_13
    const/4 v2, 0x1

    :goto_14
    if-eqz v2, :cond_2f

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    :cond_2f
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_15

    :cond_30
    move v7, v8

    :goto_15
    invoke-virtual {v0, v7}, Landroid/view/ViewStructure;->setVisibility(I)V

    if-eqz v11, :cond_32

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v3

    const-string v6, ""

    move v15, v8

    :goto_16
    if-ge v15, v3, :cond_31

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    :cond_31
    invoke-virtual {v0, v6}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "android.widget.TextView"

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v4, :cond_33

    iget v1, v4, Landroidx/compose/ui/semantics/Role;->value:I

    invoke-static {v1}, Landroidx/compose/ui/platform/InvertMatrixKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_33
    if-eqz v21, :cond_36

    const-string v1, "android.widget.EditText"

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    if-eqz v27, :cond_34

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setMaxTextLength(I)V

    :cond_34
    if-eqz v5, :cond_35

    iget-object v1, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    :cond_35
    if-eqz v2, :cond_36

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setInputType(I)V

    :cond_36
    return-void
.end method

.method public static topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 4

    const-string/jumbo v0, "shortName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;->ROOT:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-direct {v1, v2, v3, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)V

    return-object v0
.end method
