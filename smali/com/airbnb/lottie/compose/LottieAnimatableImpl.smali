.class public final Lcom/airbnb/lottie/compose/LottieAnimatableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/State;


# instance fields
.field public final clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final endProgress$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final frameSpeed$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final iterations$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final mutex:Landroidx/compose/foundation/MutatorMutex;

.field public final progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final progressRaw$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final reverseOnRepeat$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final useCompositionFrameRate$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iterations$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->reverseOnRepeat$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->useCompositionFrameRate$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;I)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->frameSpeed$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progressRaw$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;I)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->endProgress$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;I)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v0, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {v0}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->mutex:Landroidx/compose/foundation/MutatorMutex;

    return-void
.end method

.method public static final access$onFrame(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IJ)Z
    .locals 10

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progressRaw$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v3, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->frameSpeed$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    iget-object v4, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->lastFrameNanos$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    const/4 v5, 0x1

    if-nez v0, :cond_0

    return v5

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long v6, p2, v6

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6

    const p2, 0xf4240

    int-to-long p2, p2

    div-long/2addr v6, p2

    long-to-float p2, v6

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result p3

    div-float/2addr p2, p3

    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    mul-float/2addr p3, p2

    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez p2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p2, p3

    sub-float p2, v0, p2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p2, p3

    sub-float/2addr p2, v1

    :goto_1
    cmpg-float v4, p2, v0

    if-gez v4, :cond_3

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    add-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->updateProgress(F)V

    return v5

    :cond_3
    div-float p3, p2, v1

    float-to-int p3, p3

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getIteration()I

    move-result v4

    add-int/2addr v4, v2

    if-le v4, p1, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getEndProgress()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->updateProgress(F)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setIteration(I)V

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getIteration()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->setIteration(I)V

    int-to-float p1, p3

    mul-float/2addr p1, v1

    sub-float/2addr p2, p1

    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    sub-float/2addr v1, p2

    goto :goto_2

    :cond_5
    add-float v1, v0, p2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->updateProgress(F)V

    return v5

    :cond_6
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static final access$setPlaying(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->isPlaying$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getEndProgress()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->endProgress$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getIteration()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setIteration(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iteration$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progressRaw$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->useCompositionFrameRate$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    const/4 v1, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v0

    rem-float v0, p1, v1

    sub-float/2addr p1, v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
