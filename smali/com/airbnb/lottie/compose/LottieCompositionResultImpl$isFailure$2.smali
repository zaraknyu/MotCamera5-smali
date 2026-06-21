.class public final Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;I)V
    .locals 0

    iput p2, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieComposition;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isFailure$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
