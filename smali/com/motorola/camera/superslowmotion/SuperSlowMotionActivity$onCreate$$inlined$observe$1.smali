.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->hideRunnable:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12052d

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f12052c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f12015c

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    :cond_2
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaStoreUri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    new-instance v2, Lcom/motorola/camera/CameraData;

    const-string v1, ""

    const/4 v3, 0x1

    invoke-direct {v2, p1, v1, v3}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p1

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/motorola/camera/SecureMediaIdsManager;->addMediaId(Landroid/net/Uri;JI)V

    new-instance v7, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 p1, 0x11

    invoke-direct {v7, p1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v0, v0, v1, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const p1, 0x7f12052e

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/CameraApp;->showToast(II)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setThumbnails(Ljava/util/List;)V

    return-void

    :cond_7
    const-string/jumbo p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
