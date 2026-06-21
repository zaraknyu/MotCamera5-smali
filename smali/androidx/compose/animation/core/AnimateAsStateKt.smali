.class public abstract Landroidx/compose/animation/core/AnimateAsStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

.field public static final dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    sget-object v0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->VisibilityThresholdMap:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/ui/unit/Dp;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    const/4 v1, 0x3

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    return-void
.end method

.method public static final animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;
    .locals 9

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p2, "FloatAnimation"

    :cond_0
    move-object v5, p2

    const/4 p2, 0x3

    sget-object p5, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    const/4 v1, 0x0

    if-ne p1, p5, :cond_3

    const p1, 0x4316aad7

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p5, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1, p2, v4}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object p1, p5

    check-cast p1, Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_3
    const p5, 0x4318583d

    invoke-virtual {p3, p5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_0

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    shl-int/lit8 p0, p4, 0x3

    const p1, 0xe000

    and-int v7, p0, p1

    const/4 v8, 0x0

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;
    .locals 7

    and-int/lit8 p4, p7, 0x8

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    move-object p3, p6

    :cond_0
    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    sget-object p7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p4, p7, :cond_1

    invoke-static {p6}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p4

    invoke-virtual {p5, p4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast p4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p7, :cond_2

    new-instance v0, Landroidx/compose/animation/core/Animatable;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v3, v0

    check-cast v3, Landroidx/compose/animation/core/Animatable;

    invoke-static {p6, p5}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    if-eqz p3, :cond_3

    instance-of p1, p2, Landroidx/compose/animation/core/SpringSpec;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Landroidx/compose/animation/core/SpringSpec;

    iget-object v0, p1, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget p2, p1, Landroidx/compose/animation/core/SpringSpec;->dampingRatio:F

    iget p1, p1, Landroidx/compose/animation/core/SpringSpec;->stiffness:F

    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    invoke-direct {v0, p2, p1, p3}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-static {p2, p5}, Landroidx/compose/runtime/AnchoredGroupPath;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p7, :cond_4

    const/4 p1, -0x1

    const/4 p2, 0x6

    invoke-static {p1, p2, p6}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/channels/Channel;

    invoke-virtual {p5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p5, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_5

    if-ne p2, p7, :cond_6

    :cond_5
    new-instance p2, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 p1, 0x1

    invoke-direct {p2, p1, v2, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p5}, Landroidx/compose/runtime/AnchoredGroupPath;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p5, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p5, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_7

    if-ne p1, p7, :cond_8

    :cond_7
    new-instance v1, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;-><init>(Lkotlinx/coroutines/channels/Channel;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p5, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object p1, v1

    :cond_8
    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p5, v2, p1}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/State;

    if-nez p0, :cond_9

    iget-object p0, v3, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    :cond_9
    return-object p0
.end method
