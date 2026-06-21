.class public abstract Le/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    int-to-float v0, v0

    sput v0, Le/m0;->a:F

    return-void
.end method

.method public static final a(Ljava/lang/Object;ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Animatable;
    .locals 7

    const v0, 0x5780cd81

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x33df361c

    .line 12
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 13
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    .line 14
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez p0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    int-to-float p0, p1

    .line 15
    invoke-static {p0}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 17
    :cond_1
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    const/4 p0, 0x0

    .line 18
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x33df4146

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v3, p3, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/4 v4, 0x1

    const/16 v5, 0x20

    if-le v3, v5, :cond_2

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    and-int/lit8 v3, p3, 0x30

    if-ne v3, v5, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, p0

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    and-int/lit16 v5, p3, 0x380

    xor-int/lit16 v5, v5, 0x180

    const/16 v6, 0x100

    if-le v5, v6, :cond_5

    const/16 v5, 0x12c

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    and-int/lit16 p3, p3, 0x180

    if-ne p3, v6, :cond_6

    goto :goto_1

    :cond_6
    move v4, p0

    :cond_7
    :goto_1
    or-int p3, v3, v4

    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez p3, :cond_8

    if-ne v3, v1, :cond_9

    .line 21
    :cond_8
    new-instance v3, Le/j0;

    const/4 p3, 0x0

    invoke-direct {v3, p1, v0, p3}, Le/j0;-><init>(ILandroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    .line 22
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 23
    :cond_9
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 24
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 25
    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 26
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public static final a(Lc/X;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Le/l0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/l0;

    iget v1, v0, Le/l0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/l0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/l0;

    .line 1
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    :goto_0
    iget-object p1, v0, Le/l0;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget v2, v0, Le/l0;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/l0;->a:Ljava/lang/Object;

    check-cast p0, Lc/L;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Le/l0;->a:Ljava/lang/Object;

    check-cast p0, Lc/X;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/X;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 5
    iput-object p0, v0, Le/l0;->a:Ljava/lang/Object;

    iput v4, v0, Le/l0;->c:I

    .line 6
    sget-object p1, Lc/X;->a0:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v2, Lc/V;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0, v5}, Lc/V;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    :goto_1
    check-cast p1, Lc/L;

    .line 8
    iput-object p1, v0, Le/l0;->a:Ljava/lang/Object;

    iput v3, v0, Le/l0;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v2, Lc/X;->a0:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v3, Lc/V;

    const/16 v4, 0x5a

    invoke-direct {v3, v4, p0, v5}, Lc/V;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 10
    :goto_3
    check-cast p1, Lc/L;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 11
    new-instance v0, Le/Y;

    invoke-direct {v0, p0, p1}, Le/Y;-><init>(Lc/L;Lc/L;)V

    return-object v0

    :cond_6
    return-object v5
.end method

.method public static final a(Landroidx/compose/ui/graphics/AndroidImageBitmap;FFFLandroidx/compose/runtime/ComposerImpl;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v8, p4

    move/from16 v9, p5

    const v0, -0x45aeacdf

    .line 198
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v9, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    and-int/lit8 v3, v9, 0x30

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-nez v3, :cond_3

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v9, 0x180

    const/16 v6, 0x100

    if-nez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v9, 0xc00

    if-nez v3, :cond_7

    move/from16 v3, p1

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_4

    :cond_6
    const/16 v10, 0x400

    :goto_4
    or-int/2addr v0, v10

    goto :goto_5

    :cond_7
    move/from16 v3, p1

    :goto_5
    and-int/lit16 v10, v9, 0x6000

    if-nez v10, :cond_9

    move/from16 v10, p2

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_6

    :cond_8
    const/16 v12, 0x2000

    :goto_6
    or-int/2addr v0, v12

    goto :goto_7

    :cond_9
    move/from16 v10, p2

    :goto_7
    const/high16 v12, 0x30000

    or-int/2addr v0, v12

    const v12, 0x12493

    and-int/2addr v12, v0

    const v13, 0x12492

    if-ne v12, v13, :cond_b

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_8

    .line 199
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v4, p3

    goto/16 :goto_11

    :cond_b
    :goto_8
    const v12, 0x40ed883c

    .line 200
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 201
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    and-int/lit8 v13, v0, 0x70

    const/4 v14, 0x0

    if-ne v13, v5, :cond_c

    const/16 v16, 0x1

    goto :goto_9

    :cond_c
    move/from16 v16, v14

    :goto_9
    or-int v12, v12, v16

    move-object/from16 v16, v4

    and-int/lit16 v4, v0, 0x380

    if-ne v4, v6, :cond_d

    const/16 v17, 0x1

    goto :goto_a

    :cond_d
    move/from16 v17, v14

    :goto_a
    or-int v12, v12, v17

    .line 202
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v12, :cond_e

    if-ne v15, v7, :cond_f

    :cond_e
    const/high16 v12, 0x3f800000    # 1.0f

    .line 203
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 204
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 205
    :cond_f
    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .line 206
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v15, 0x40edbcf7

    .line 207
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 208
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v7, :cond_10

    .line 209
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v15

    .line 210
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 211
    :cond_10
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 212
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 213
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 214
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 215
    check-cast v6, Landroidx/compose/ui/unit/Density;

    const v11, 0x40edcbb8

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 216
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    const/high16 v18, 0x70000

    move/from16 v19, v5

    and-int v5, v0, v18

    const/high16 v2, 0x20000

    if-ne v5, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_b

    :cond_11
    move v2, v14

    :goto_b
    or-int/2addr v2, v11

    .line 217
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget v11, Le/m0;->a:F

    if-nez v2, :cond_12

    if-ne v5, v7, :cond_13

    .line 218
    :cond_12
    invoke-interface {v6, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 219
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 220
    :cond_13
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 221
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 222
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/geometry/Rect;

    const v6, 0x40eddb89

    .line 223
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    .line 224
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_14

    if-ne v6, v7, :cond_16

    .line 225
    :cond_14
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/geometry/Rect;

    if-eqz v1, :cond_15

    if-eqz v5, :cond_15

    .line 226
    iget v6, v5, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 227
    iget v14, v5, Landroidx/compose/ui/geometry/Rect;->left:F

    sub-float/2addr v6, v14

    const/4 v14, 0x2

    int-to-float v14, v14

    mul-float/2addr v2, v14

    sub-float/2addr v6, v2

    .line 228
    iget v14, v5, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 229
    iget v5, v5, Landroidx/compose/ui/geometry/Rect;->top:F

    sub-float/2addr v14, v5

    sub-float/2addr v14, v2

    .line 230
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    .line 231
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v5, v5, v19

    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    or-long/2addr v2, v5

    .line 232
    iget-object v5, v1, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 233
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 234
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 235
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move v14, v5

    int-to-long v5, v6

    .line 236
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    move-wide/from16 v22, v5

    int-to-long v5, v14

    shl-long v22, v22, v19

    and-long v5, v5, v20

    or-long v5, v22, v5

    .line 237
    invoke-static {v2, v3, v5, v6}, La/l;->a(JJ)Le/W0;

    move-result-object v2

    goto :goto_c

    :cond_15
    move-object/from16 v2, v16

    .line 238
    :goto_c
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v6, v2

    .line 239
    :cond_16
    check-cast v6, Le/W0;

    const/4 v2, 0x0

    .line 240
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 241
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Rect;

    const v3, 0x40ee1729

    .line 242
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v3, v19

    if-ne v13, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    or-int/2addr v2, v3

    .line 243
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_18

    if-ne v3, v7, :cond_19

    .line 244
    :cond_18
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Rect;

    .line 245
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-direct {v3, v13, v14}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 246
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 247
    :cond_19
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 248
    iget-wide v2, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/4 v5, 0x0

    .line 249
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 250
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    const v13, 0x40ee5145

    .line 251
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 252
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v7, :cond_1a

    .line 253
    new-instance v13, Le/Q0$$ExternalSyntheticLambda0;

    const/4 v14, 0x1

    invoke-direct {v13, v15, v14}, Le/Q0$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 254
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 255
    :cond_1a
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    .line 256
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 257
    invoke-static {v5, v13}, Landroidx/compose/ui/layout/ScaleFactorKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v5, 0x40ee5946

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v8, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    or-int/2addr v5, v14

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v5, v14

    const v14, 0xe000

    and-int/2addr v14, v0

    const/16 v15, 0x4000

    if-ne v14, v15, :cond_1b

    const/4 v14, 0x1

    goto :goto_e

    :cond_1b
    const/4 v14, 0x0

    :goto_e
    or-int/2addr v5, v14

    const/16 v14, 0x100

    if-ne v4, v14, :cond_1c

    const/4 v4, 0x1

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    :goto_f
    or-int/2addr v4, v5

    and-int/lit16 v0, v0, 0x1c00

    const/16 v5, 0x800

    if-ne v0, v5, :cond_1d

    const/4 v15, 0x1

    goto :goto_10

    :cond_1d
    const/4 v15, 0x0

    :goto_10
    or-int v0, v4, v15

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 258
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1e

    if-ne v4, v7, :cond_1f

    .line 259
    :cond_1e
    new-instance v0, Le/m0$$ExternalSyntheticLambda1;

    move-object v4, v6

    move v5, v10

    move v7, v12

    move/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Le/m0$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;JLe/W0;FFF)V

    .line 260
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v0

    .line 261
    :cond_1f
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    .line 262
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x6

    .line 263
    invoke-static {v13, v4, v8, v0}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move v4, v11

    .line 264
    :goto_11
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_20

    new-instance v0, Le/m0$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Le/m0$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;FFFI)V

    .line 265
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final a(Lc/X;FFLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function2;Le/Q;ZZLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v11, p3

    move-object/from16 v2, p4

    move-object/from16 v12, p12

    move/from16 v14, p13

    move/from16 v15, p14

    iget-object v0, v1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const-string v3, "rotation"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "isLoading"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x676e7c3a

    .line 27
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v14, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_1
    move v3, v14

    :goto_1
    and-int/lit8 v5, v14, 0x30

    if-nez v5, :cond_3

    move/from16 v5, p1

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v3, v8

    goto :goto_3

    :cond_3
    move/from16 v5, p1

    :goto_3
    and-int/lit16 v8, v14, 0x180

    if-nez v8, :cond_5

    move/from16 v8, p2

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x100

    goto :goto_4

    :cond_4
    const/16 v16, 0x80

    :goto_4
    or-int v3, v3, v16

    goto :goto_5

    :cond_5
    move/from16 v8, p2

    :goto_5
    and-int/lit16 v4, v14, 0xc00

    if-nez v4, :cond_7

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_6

    :cond_6
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v3, v4

    :cond_7
    and-int/lit16 v4, v14, 0x6000

    if-nez v4, :cond_9

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_7

    :cond_8
    const/16 v4, 0x2000

    :goto_7
    or-int/2addr v3, v4

    :cond_9
    const/high16 v4, 0x30000

    or-int/2addr v3, v4

    const/high16 v4, 0x180000

    and-int/2addr v4, v14

    if-nez v4, :cond_b

    move-object/from16 v4, p6

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/high16 v19, 0x100000

    goto :goto_8

    :cond_a
    const/high16 v19, 0x80000

    :goto_8
    or-int v3, v3, v19

    goto :goto_9

    :cond_b
    move-object/from16 v4, p6

    :goto_9
    const/high16 v19, 0xc00000

    and-int v19, v14, v19

    move-object/from16 v9, p7

    if-nez v19, :cond_d

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/high16 v20, 0x800000

    goto :goto_a

    :cond_c
    const/high16 v20, 0x400000

    :goto_a
    or-int v3, v3, v20

    :cond_d
    const/high16 v20, 0x6000000

    and-int v20, v14, v20

    move/from16 v13, p8

    if-nez v20, :cond_f

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_e

    const/high16 v21, 0x4000000

    goto :goto_b

    :cond_e
    const/high16 v21, 0x2000000

    :goto_b
    or-int v3, v3, v21

    :cond_f
    const/high16 v21, 0x30000000

    and-int v21, v14, v21

    move/from16 v10, p9

    if-nez v21, :cond_11

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_10

    const/high16 v22, 0x20000000

    goto :goto_c

    :cond_10
    const/high16 v22, 0x10000000

    :goto_c
    or-int v3, v3, v22

    :cond_11
    or-int/lit8 v22, v15, 0x6

    and-int/lit8 v23, v15, 0x30

    move-object/from16 v10, p10

    if-nez v23, :cond_13

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    const/16 v18, 0x20

    goto :goto_d

    :cond_12
    const/16 v18, 0x10

    :goto_d
    or-int v22, v22, v18

    :cond_13
    and-int/lit16 v6, v15, 0x180

    if-nez v6, :cond_15

    move-object/from16 v6, p11

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/16 v19, 0x100

    goto :goto_e

    :cond_14
    const/16 v19, 0x80

    :goto_e
    or-int v22, v22, v19

    :goto_f
    move/from16 v10, v22

    goto :goto_10

    :cond_15
    move-object/from16 v6, p11

    goto :goto_f

    :goto_10
    const v19, 0x12492493

    and-int v7, v3, v19

    move-object/from16 v19, v0

    const v0, 0x12492492

    if-ne v7, v0, :cond_17

    and-int/lit16 v0, v10, 0x93

    const/16 v7, 0x92

    if-ne v0, v7, :cond_17

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_11

    .line 28
    :cond_16
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v6, p5

    move-object v14, v12

    goto/16 :goto_2b

    .line 29
    :cond_17
    :goto_11
    sget-object v0, Le/j1;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 30
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i1;

    move v7, v10

    .line 31
    iget-wide v10, v0, Le/i1;->m:J

    const v0, 0xe992d94

    .line 32
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 33
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    move/from16 p5, v0

    .line 34
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v23, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-wide/from16 v24, v10

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez p5, :cond_18

    if-ne v0, v10, :cond_19

    .line 35
    :cond_18
    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    .line 36
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 37
    :cond_19
    check-cast v0, Landroidx/compose/runtime/MutableState;

    const/4 v11, 0x0

    .line 38
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v11, 0xe993af4

    .line 39
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 40
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 41
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v11, :cond_1a

    if-ne v2, v10, :cond_1b

    .line 42
    :cond_1a
    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    .line 43
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 44
    :cond_1b
    check-cast v2, Landroidx/compose/runtime/MutableState;

    const/4 v11, 0x0

    .line 45
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 46
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move/from16 v23, v3

    .line 47
    iget-object v3, v1, Lc/X;->s:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 48
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/z1;

    .line 49
    iget-object v4, v1, Lc/X;->u:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 50
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const v5, 0xe99474b

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v5, v11

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v5

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 51
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1d

    if-ne v4, v10, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v11, 0x0

    goto :goto_16

    .line 52
    :cond_1d
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 53
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 54
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 57
    check-cast v5, Lc/I;

    .line 58
    iget v11, v5, Lc/I;->b:I

    iget-object v5, v5, Lc/I;->a:Landroid/graphics/Bitmap;

    move-object/from16 v27, v3

    .line 59
    new-instance v3, Lc/H;

    move-object/from16 v28, v5

    .line 60
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v5, v6, v11}, Lc/H;-><init>(III)V

    .line 61
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p11

    move-object/from16 v3, v27

    goto :goto_13

    :cond_1e
    const/4 v3, 0x3

    const/4 v11, 0x0

    .line 62
    invoke-static {v1, v11, v4, v3}, Lc/X;->a(Lc/X;ILjava/util/ArrayList;I)Lc/v1;

    move-result-object v3

    :goto_14
    move-object v4, v3

    goto :goto_15

    :cond_1f
    const/4 v11, 0x0

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 63
    invoke-static {v1, v11, v4, v3}, Lc/X;->a(Lc/X;ILjava/util/ArrayList;I)Lc/v1;

    move-result-object v3

    goto :goto_14

    .line 64
    :goto_15
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 65
    :goto_16
    check-cast v4, Lc/v1;

    .line 66
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0xe9970ca

    .line 67
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 68
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 69
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_20

    if-ne v5, v10, :cond_21

    :cond_20
    const/16 v26, 0x0

    .line 70
    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    .line 71
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 72
    :cond_21
    move-object v11, v5

    check-cast v11, Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, 0xe997b90

    .line 74
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 75
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_22

    .line 76
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    .line 77
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    :cond_22
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 79
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 80
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 81
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 82
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v13, 0x1

    .line 83
    invoke-static {v6, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    const v13, 0xe9996d0

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 84
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_23

    .line 85
    new-instance v13, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    move-object/from16 v27, v4

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 86
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_17

    :cond_23
    move-object/from16 v27, v4

    const/4 v4, 0x0

    .line 87
    :goto_17
    check-cast v13, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 88
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 89
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/s1;

    .line 90
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v5

    move-object/from16 v5, v28

    check-cast v5, Lc/s1;

    move/from16 v28, v7

    const v7, 0xe99a45d

    .line 91
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v30

    or-int v7, v7, v30

    move/from16 v30, v7

    .line 92
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v30, :cond_24

    if-ne v7, v10, :cond_25

    .line 93
    :cond_24
    new-instance v7, Le/f0;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v6, v13, v8}, Le/f0;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Lkotlin/coroutines/Continuation;)V

    .line 94
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    :cond_25
    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 97
    invoke-static {v13, v4, v5, v7, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    const v3, 0xe99ef4d

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 98
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 99
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_26

    if-ne v4, v10, :cond_27

    .line 100
    :cond_26
    new-instance v3, Lg/a0;

    invoke-direct {v3}, Lg/a0;-><init>()V

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    .line 101
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 102
    :cond_27
    move-object v7, v4

    check-cast v7, Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 104
    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 105
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0xe9a04c9

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/high16 v4, 0x70000000

    and-int v4, v23, v4

    const/high16 v5, 0x20000000

    if-ne v4, v5, :cond_28

    const/4 v4, 0x1

    goto :goto_18

    :cond_28
    const/4 v4, 0x0

    :goto_18
    const v5, 0xe000

    and-int v5, v23, v5

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_29

    const/4 v5, 0x1

    goto :goto_19

    :cond_29
    const/4 v5, 0x0

    :goto_19
    or-int/2addr v4, v5

    const/high16 v5, 0xe000000

    and-int v5, v23, v5

    const/high16 v6, 0x4000000

    if-ne v5, v6, :cond_2a

    const/4 v5, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v5, 0x0

    :goto_1a
    or-int/2addr v4, v5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    const/high16 v5, 0x1c00000

    and-int v5, v23, v5

    const/high16 v6, 0x800000

    if-ne v5, v6, :cond_2b

    const/4 v5, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v5, 0x0

    :goto_1b
    or-int/2addr v4, v5

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 106
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_2c

    if-ne v5, v10, :cond_2d

    :cond_2c
    move-object v6, v0

    goto :goto_1c

    :cond_2d
    move-object v9, v0

    move-object v8, v1

    move-object v14, v3

    move-object v15, v10

    move-wide/from16 v31, v24

    move-object v10, v2

    goto :goto_1d

    .line 107
    :goto_1c
    new-instance v0, Le/g0;

    move-object v4, v10

    const/4 v10, 0x0

    move-object v5, v1

    move-object v14, v3

    move-object v15, v4

    move-object v4, v9

    move-wide/from16 v31, v24

    move-object/from16 v8, v29

    move/from16 v3, p8

    move/from16 v1, p9

    move-object v9, v2

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v10}, Le/g0;-><init>(ZLkotlin/jvm/functions/Function1;ZLe/Q;Lc/X;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v10, v9

    move-object v8, v5

    move-object v9, v6

    .line 108
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v0

    .line 109
    :goto_1d
    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    .line 110
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 111
    invoke-static {v8, v13, v14, v5, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    .line 112
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    iget-object v1, v8, Lc/X;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 114
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0xe9a625b

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 116
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2e

    if-ne v3, v15, :cond_2f

    .line 117
    :cond_2e
    new-instance v3, Le/h0;

    const/4 v4, 0x0

    invoke-direct {v3, v8, v9, v11, v4}, Le/h0;-><init>(Lc/X;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 118
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 119
    :cond_2f
    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    .line 120
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v13, v27

    .line 121
    invoke-static {v13, v0, v1, v3, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    .line 122
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 123
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    const v2, 0x3e4ccccd    # 0.2f

    .line 124
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v0

    goto :goto_1e

    .line 125
    :cond_30
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    .line 126
    :goto_1e
    sget-object v2, Landroidx/compose/animation/SingleValueAnimationKt;->colorDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 127
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 128
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_31

    if-ne v4, v15, :cond_32

    .line 129
    :cond_31
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v3

    .line 130
    sget-object v4, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE$5:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    new-instance v5, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    sget-object v3, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 131
    new-instance v3, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v3, v4, v5}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 132
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v3

    .line 133
    :cond_32
    check-cast v4, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 134
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    const/16 v6, 0x6000

    const/16 v7, 0x8

    move-object v0, v3

    const/4 v3, 0x0

    move-object v1, v4

    .line 135
    const-string v4, "Animated Background Color"

    move-object v5, v12

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;

    move-result-object v6

    move-object v14, v5

    .line 136
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 137
    sget v7, Le/m0;->a:F

    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 138
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v8, v13, v0}, [Ljava/lang/Object;

    move-result-object v36

    const v0, 0xe9aa634

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, v28, 0x70

    const/16 v1, 0x20

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    goto :goto_1f

    :cond_33
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    move/from16 v2, v23

    and-int/lit16 v3, v2, 0x1c00

    const/16 v4, 0x800

    if-ne v3, v4, :cond_34

    const/4 v4, 0x1

    goto :goto_20

    :cond_34
    const/4 v4, 0x0

    :goto_20
    or-int/2addr v0, v4

    move/from16 v4, v28

    and-int/lit16 v5, v4, 0x380

    move/from16 v16, v7

    const/16 v7, 0x100

    if-ne v5, v7, :cond_35

    const/4 v5, 0x1

    goto :goto_21

    :cond_35
    const/4 v5, 0x0

    :goto_21
    or-int/2addr v0, v5

    .line 139
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_37

    if-ne v5, v15, :cond_36

    goto :goto_22

    :cond_36
    move/from16 v28, v4

    move-object v1, v8

    move v8, v2

    move-object v2, v13

    move v13, v3

    goto :goto_23

    .line 140
    :cond_37
    :goto_22
    new-instance v0, Le/i0;

    move-object v1, v8

    move v8, v2

    move-object v2, v13

    move v13, v3

    move-object v3, v1

    move-object/from16 v1, p10

    move-object/from16 v5, p11

    move/from16 v28, v4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Le/i0;-><init>(Landroidx/compose/runtime/State;Lc/v1;Lc/X;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;)V

    move-object v1, v3

    .line 141
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v0

    .line 142
    :goto_23
    move-object/from16 v37, v5

    check-cast v37, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 144
    sget-object v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 145
    new-instance v33, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/16 v35, 0x0

    const/16 v38, 0x3

    const/16 v34, 0x0

    invoke-direct/range {v33 .. v38}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v4, 0xe9b31fe

    .line 146
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x800

    if-ne v13, v5, :cond_38

    const/4 v5, 0x1

    goto :goto_24

    :cond_38
    move v5, v3

    :goto_24
    or-int/2addr v4, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v8

    const/high16 v12, 0x100000

    if-ne v5, v12, :cond_39

    const/4 v5, 0x1

    goto :goto_25

    :cond_39
    move v5, v3

    :goto_25
    or-int/2addr v4, v5

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    and-int/lit16 v5, v8, 0x380

    if-ne v5, v7, :cond_3a

    const/4 v5, 0x1

    goto :goto_26

    :cond_3a
    move v5, v3

    :goto_26
    or-int/2addr v4, v5

    and-int/lit8 v5, v8, 0x70

    const/16 v7, 0x20

    if-ne v5, v7, :cond_3b

    const/4 v5, 0x1

    goto :goto_27

    :cond_3b
    move v5, v3

    :goto_27
    or-int/2addr v4, v5

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    and-int/lit8 v5, v28, 0xe

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3c

    const/16 v19, 0x1

    goto :goto_28

    :cond_3c
    move/from16 v19, v3

    :goto_28
    or-int v4, v4, v19

    move-wide/from16 v12, v31

    invoke-virtual {v14, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    or-int/2addr v4, v5

    .line 147
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3d

    if-ne v5, v15, :cond_3e

    :cond_3d
    move-object v4, v0

    goto :goto_29

    :cond_3e
    move v15, v3

    move/from16 v17, v16

    move-object/from16 v16, v0

    goto :goto_2a

    .line 148
    :goto_29
    new-instance v0, Le/m0$$ExternalSyntheticLambda5;

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v7, p2

    move v15, v3

    move-object v5, v6

    move-object v6, v9

    move/from16 v17, v16

    move-object/from16 v8, v29

    move/from16 v9, p1

    move-object/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v13}, Le/m0$$ExternalSyntheticLambda5;-><init>(Lc/v1;Lc/X;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;J)V

    .line 149
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v0

    .line 150
    :goto_2a
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 151
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v4, v16

    .line 152
    invoke-static {v4, v5, v14, v15}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move/from16 v6, v17

    .line 153
    :goto_2b
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_3f

    new-instance v0, Le/m0$$ExternalSyntheticLambda6;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Le/m0$$ExternalSyntheticLambda6;-><init>(Lc/X;FFLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function2;Le/Q;ZZLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;II)V

    .line 154
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3f
    return-void
.end method

.method public static final a(Lc/X;Lc/s1;IFLandroidx/compose/ui/graphics/AndroidImageBitmap;Lc/a;FLandroidx/compose/runtime/ComposerImpl;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    const v2, -0x51fee2e9

    .line 155
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v12

    goto :goto_1

    :cond_1
    move v2, v12

    :goto_1
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v12, 0x180

    if-nez v3, :cond_5

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v2, v3

    :cond_5
    or-int/lit16 v2, v2, 0xc00

    and-int/lit16 v3, v12, 0x6000

    if-nez v3, :cond_7

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x4000

    goto :goto_4

    :cond_6
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v2, v3

    :cond_7
    const/high16 v3, 0x30000

    and-int/2addr v3, v12

    if-nez v3, :cond_9

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x20000

    goto :goto_5

    :cond_8
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v2, v3

    :cond_9
    const/high16 v3, 0x180000

    and-int/2addr v3, v12

    move/from16 v7, p6

    if-nez v3, :cond_b

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x100000

    goto :goto_6

    :cond_a
    const/high16 v3, 0x80000

    :goto_6
    or-int/2addr v2, v3

    :cond_b
    const v3, 0x92493

    and-int/2addr v3, v2

    const v6, 0x92492

    if-ne v3, v6, :cond_d

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_7

    .line 156
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v4, p3

    goto/16 :goto_b

    .line 157
    :cond_d
    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_f

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_8

    .line 158
    :cond_e
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v13, p3

    goto :goto_9

    .line 159
    :cond_f
    :goto_8
    sget v3, Le/m0;->a:F

    move v13, v3

    .line 160
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    .line 161
    iget v3, v1, Lc/X;->o:I

    .line 162
    iget v6, v10, Lc/s1;->w:I

    const v8, -0x686b2254

    .line 163
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 164
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v3, :cond_10

    if-ne v6, v8, :cond_11

    .line 165
    :cond_10
    iget v3, v1, Lc/X;->o:I

    const/16 v6, 0xb

    const/4 v14, 0x0

    .line 166
    invoke-static {v1, v3, v14, v6}, Lc/X;->a(Lc/X;ILjava/util/ArrayList;I)Lc/v1;

    move-result-object v6

    .line 167
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    :cond_11
    move-object v3, v6

    check-cast v3, Lc/v1;

    const/4 v14, 0x0

    .line 169
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, -0x686b0f12

    .line 170
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 171
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 172
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_12

    if-ne v15, v8, :cond_13

    .line 173
    :cond_12
    iget-object v6, v3, Lc/v1;->c:Ljava/lang/Object;

    .line 174
    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lc/x;

    .line 175
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 176
    :cond_13
    move-object v6, v15

    check-cast v6, Lc/x;

    .line 177
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 178
    iget-object v15, v1, Lc/X;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 179
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 180
    iget-object v5, v10, Lc/s1;->x:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 181
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v5

    add-int/2addr v5, v15

    rem-int/lit16 v5, v5, 0x168

    shr-int/lit8 v15, v2, 0x3

    and-int/lit8 v15, v15, 0xe

    .line 182
    invoke-static {v10, v5, v11, v15}, Le/m0;->a(Ljava/lang/Object;ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    const v15, -0x686aece5

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 183
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v8, :cond_14

    .line 184
    new-instance v15, Lc/a;

    invoke-direct {v15}, Lc/a;-><init>()V

    .line 185
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 186
    :cond_14
    check-cast v15, Lc/a;

    .line 187
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 188
    sget-object v14, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 189
    invoke-static {v14, v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v0, -0x686ad392

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    or-int v0, v0, v16

    const/high16 v16, 0x380000

    and-int v2, v2, v16

    move/from16 v16, v0

    const/high16 v0, 0x100000

    if-ne v2, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_a
    or-int v0, v16, v0

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 190
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_16

    if-ne v2, v8, :cond_17

    .line 191
    :cond_16
    new-instance v2, Le/m0$$ExternalSyntheticLambda3;

    move v8, v7

    move-object v7, v5

    move v5, v8

    move-object v8, v15

    invoke-direct/range {v2 .. v10}, Le/m0$$ExternalSyntheticLambda3;-><init>(Lc/v1;Landroidx/compose/ui/graphics/AndroidImageBitmap;FLc/x;Landroidx/compose/animation/core/Animatable;Lc/a;Lc/a;Lc/s1;)V

    .line 192
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    .line 194
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 195
    invoke-static {v14, v2, v11, v0}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    move v4, v13

    .line 196
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_18

    new-instance v0, Le/m0$$ExternalSyntheticLambda4;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move v8, v12

    invoke-direct/range {v0 .. v8}, Le/m0$$ExternalSyntheticLambda4;-><init>(Lc/X;Lc/s1;IFLandroidx/compose/ui/graphics/AndroidImageBitmap;Lc/a;FI)V

    .line 197
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
