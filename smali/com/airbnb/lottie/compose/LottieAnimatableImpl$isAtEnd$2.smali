.class public final Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;I)V
    .locals 0

    iput p2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->reverseOnRepeat$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getIteration()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    neg-float p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$isAtEnd$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getIteration()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->iterations$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getEndProgress()F

    move-result p0

    cmpg-float p0, v0, p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
