.class public final Le/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/H0;

.field public final synthetic c:Le/c;

.field public final synthetic d:Le/J0;

.field public final synthetic e:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Ljava/util/List;Le/H0;Le/c;Le/J0;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/U0;->a:Ljava/util/List;

    iput-object p2, p0, Le/U0;->b:Le/H0;

    iput-object p3, p0, Le/U0;->c:Le/c;

    iput-object p4, p0, Le/U0;->d:Le/J0;

    iput-object p5, p0, Le/U0;->e:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v11, p4

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v4, p5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, "$this$DocumentPager"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v4

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    and-int/lit8 v8, v4, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :cond_3
    and-int/lit16 v4, v4, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v5, v4

    :cond_5
    and-int/lit16 v4, v5, 0x493

    const/16 v8, 0x492

    if-ne v4, v8, :cond_7

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_c

    :cond_7
    :goto_4
    iget-object v4, v0, Le/U0;->a:Ljava/util/List;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/X;

    if-nez v4, :cond_8

    goto/16 :goto_c

    :cond_8
    iget-object v8, v4, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/s1;

    if-nez v8, :cond_9

    goto/16 :goto_c

    :cond_9
    const v10, 0x776a355b

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/4 v14, 0x0

    if-nez v10, :cond_a

    if-ne v12, v13, :cond_b

    :cond_a
    invoke-static {v14}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v12, Landroidx/compose/runtime/MutableState;

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v10, v8, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/P0;

    const/16 p1, 0x20

    const v9, 0x776a4212

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_c

    if-ne v10, v13, :cond_d

    :cond_c
    invoke-virtual {v8}, Lc/s1;->g()Lc/a;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    move-object v9, v10

    check-cast v9, Lc/a;

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v10, 0x776a4f9f

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v10, v10, v16

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v10, v10, v16

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v10, :cond_e

    if-ne v7, v13, :cond_f

    :cond_e
    new-instance v7, Le/S0;

    invoke-direct {v7, v8, v9, v12, v14}, Le/S0;-><init>(Lc/s1;Lc/a;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v7, 0x776a771d

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    const/16 p3, 0x3

    iget-object v10, v0, Le/U0;->b:Le/H0;

    if-nez v7, :cond_10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, v5, 0xe

    or-int/lit8 v0, v0, 0x30

    shl-int/lit8 v4, v5, 0x3

    and-int/lit16 v5, v4, 0x380

    or-int/2addr v0, v5

    and-int/lit16 v4, v4, 0x1c00

    or-int v6, v0, v4

    const/4 v7, 0x0

    move-object v0, v1

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v5, v11

    invoke-static/range {v0 .. v7}, Le/W;->a(Landroidx/compose/foundation/layout/BoxScope;ZIILe/X;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_c

    :cond_10
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, v4, Lc/X;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v7, v8, Lc/s1;->x:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v7

    add-int/2addr v7, v1

    rem-int/lit16 v7, v7, 0x168

    invoke-static {v8, v7, v11, v15}, Le/m0;->a(Ljava/lang/Object;ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Animatable;

    move-result-object v1

    const v7, 0x776ad1cf

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v7, v0, Le/U0;->c:Le/c;

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v16, :cond_11

    if-ne v6, v13, :cond_12

    :cond_11
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v6, v14

    :cond_12
    check-cast v6, Le/c;

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    const v15, 0x776b0327

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v15, :cond_14

    if-ne v14, v13, :cond_13

    goto :goto_5

    :cond_13
    move-object/from16 v17, v1

    goto :goto_6

    :cond_14
    :goto_5
    new-instance v14, Lf/g;

    const/4 v15, 0x1

    move-object/from16 v17, v1

    const/4 v1, 0x0

    invoke-direct {v14, v6, v12, v1, v15}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_6
    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v6, v7, v14, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    iget-object v1, v0, Le/U0;->d:Le/J0;

    iget-object v1, v1, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/D;

    iget v7, v1, Lf/D;->a:I

    const/4 v14, 0x1

    if-ne v7, v2, :cond_16

    iget v1, v1, Lf/D;->b:I

    if-eq v1, v3, :cond_15

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    goto :goto_8

    :cond_16
    :goto_7
    move v1, v14

    :goto_8
    if-eqz v6, :cond_17

    iget-object v2, v6, Le/c;->a:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_17

    const v0, 0x75fdf0ae

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p5, v4

    move-object/from16 p4, v11

    invoke-static/range {p0 .. p5}, Le/m0;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;FFFLandroidx/compose/runtime/ComposerImpl;I)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_c

    :cond_17
    iget-object v0, v0, Le/U0;->e:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v6, 0x0

    cmpg-float v2, v2, v6

    if-nez v2, :cond_18

    goto :goto_9

    :cond_18
    if-eqz v1, :cond_1f

    :goto_9
    const v0, 0x7602473b

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x776b7188

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_19

    if-ne v1, v13, :cond_1c

    :cond_19
    const-string v0, "<this>"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v9, Lc/a;->a:[Landroid/graphics/PointF;

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1a

    sget-object v0, Le/t;->h:Le/t;

    goto :goto_b

    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v7, v4

    shl-long v4, v5, p1

    const-wide v18, 0xffffffffL

    and-long v6, v7, v18

    or-long/2addr v4, v6

    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    new-instance v18, Le/t;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    iget-wide v4, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    iget-wide v6, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    move-wide/from16 v25, v0

    move-wide/from16 v19, v2

    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    invoke-direct/range {v18 .. v26}, Le/t;-><init>(JJJJ)V

    move-object/from16 v0, v18

    :goto_b
    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1c
    check-cast v1, Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/t;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const v0, 0x776ba297

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1d

    if-ne v2, v13, :cond_1e

    :cond_1d
    new-instance v2, Le/J$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {v2, v0, v10, v1}, Le/J$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v12, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v12}, La/l;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;Le/t;FFJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_c

    :cond_1f
    const v1, 0x760c0f73

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v10

    and-int/lit16 v12, v5, 0x380

    const/4 v7, 0x0

    move v6, v3

    move-object v5, v8

    move-object v8, v1

    invoke-static/range {v4 .. v12}, Le/m0;->a(Lc/X;Lc/s1;IFLandroidx/compose/ui/graphics/AndroidImageBitmap;Lc/a;FLandroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
