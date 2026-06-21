.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "viewModel"

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_2

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iput-boolean p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_4

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iput-boolean p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->CANCELING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V

    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_5

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SKIP:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
