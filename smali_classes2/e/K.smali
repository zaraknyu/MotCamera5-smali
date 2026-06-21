.class public final Le/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Le/t;

.field public final synthetic b:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Le/t;Landroidx/compose/ui/graphics/AndroidImageBitmap;FFJLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/K;->a:Le/t;

    iput-object p2, p0, Le/K;->b:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput p3, p0, Le/K;->c:F

    iput p4, p0, Le/K;->d:F

    iput-wide p5, p0, Le/K;->e:J

    iput-object p7, p0, Le/K;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    const p2, -0x3386738

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Le/K;->a:Le/t;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p2, v1, :cond_2

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/MutableState;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, -0x3385f55

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    sget-object v2, Le/t;->h:Le/t;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v2}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v4, v2

    check-cast v4, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    const v2, -0x33848e2

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {p1, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_6

    if-ne v3, v1, :cond_7

    :cond_6
    new-instance v2, Le/I;

    const/4 v7, 0x0

    iget-object v3, p0, Le/K;->a:Le/t;

    invoke-direct/range {v2 .. v7}, Le/I;-><init>(Le/t;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p1, v0, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Le/K;->b:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v0, :cond_a

    const v2, -0x337f0f8

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_8

    if-ne v3, v1, :cond_9

    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    const/16 v0, 0x20

    shl-long v0, v1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v7

    or-long/2addr v0, v2

    new-instance v3, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v3, Landroidx/compose/ui/geometry/Size;

    iget-wide v0, v3, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    new-instance v2, Le/J;

    iget-wide v9, p0, Le/K;->e:J

    iget-object v11, p0, Le/K;->f:Lkotlin/jvm/functions/Function1;

    iget v3, p0, Le/K;->c:F

    move-object v12, v6

    iget v6, p0, Le/K;->d:F

    iget-object v7, p0, Le/K;->b:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-object v8, v4

    move-wide v4, v0

    invoke-direct/range {v2 .. v12}, Le/J;-><init>(FJFLandroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    const p0, 0x5b26d7da

    invoke-static {p0, v2, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xc06

    invoke-static {p2, v0, p0, p1, v1}, Landroidx/compose/foundation/layout/OffsetKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :cond_a
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
