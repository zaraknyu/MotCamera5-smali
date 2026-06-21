.class public final Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/State;


# instance fields
.field public final compositionDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public final error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isComplete$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final isSuccess$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->compositionDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;-><init>(Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;I)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;-><init>(Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;I)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isComplete$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;-><init>(Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;I)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;-><init>(Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;I)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isSuccess$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieComposition;

    return-object p0
.end method
