.class public final Landroidx/preference/ListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->CANCELING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V

    return-void

    :cond_1
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;

    iput p2, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    const/4 p2, -0x1

    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
