.class public final Lcom/motorola/camera/cli/content/CliContentViewModel;
.super Lcom/motorola/camera/arch/view/BaseViewModel;
.source "SourceFile"


# instance fields
.field public final actionReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public callback:Lcom/google/android/gms/tasks/zzb;

.field public final cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

.field public cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

.field public mainHandler:Landroid/os/Handler;

.field public presentationOpening:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    new-instance v0, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final runOnUiThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    new-instance v0, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final showContentPriv(Landroid/content/Intent;)V
    .locals 29

    move-object/from16 v0, p1

    const-string v1, "com.motorola.camera5.EXTRA_CONTENT"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v6}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    iget-object v7, v3, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    iget-object v8, v3, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    if-eq v1, v2, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    const-string v10, "eventListener"

    if-eq v1, v9, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v5, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    :goto_0
    move/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v7

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-direct {v0, v8}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    goto :goto_0

    :cond_1
    const-string v2, "GLOBAL_UUID"

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "THUMB_PATH"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-class v14, Landroid/net/Uri;

    const-string v15, "URI"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    const-string v9, "FILE_NAME"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "FILE_PATH"

    move-object/from16 v18, v4

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v19, v1

    const-string v1, "THUMB_WIDTH"

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v22, v8

    const-string v8, "THUMB_HEIGHT"

    move-object/from16 v23, v1

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "ORIENTATION"

    move-object/from16 v25, v8

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "DATE_TAKEN"

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v28, v3

    const-string v3, "DATE_MODIFIED"

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v5, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v5, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v23

    move/from16 v2, v26

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move/from16 v2, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    move-object/from16 v2, v22

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;-><init>(Landroid/os/Bundle;Lcom/motorola/camera/cli/CliEventListener;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    move/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v7

    move-object v2, v8

    const-string v1, "com.motorola.camera5.EXTRA_COUNTDOWN_TIMER"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "com.motorola.camera5.EXTRA_COUNTDOWN_TIMER_TYPE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    invoke-direct {v3, v1, v0, v2}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;-><init>(IILcom/motorola/camera/cli/CliEventListener;)V

    move-object v0, v3

    goto :goto_1

    :cond_3
    move/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v7

    move-object v2, v8

    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    :goto_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "from(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->presentationLayoutRes()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewInflated()V

    :cond_4
    move-object/from16 v1, v20

    iget v2, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->orientation:I

    iput v2, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->orientation:I

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onOrientationChanged()V

    new-instance v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    move/from16 v4, v19

    invoke-direct {v2, v4, v3, v1}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    iput-object v2, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;

    iget-object v1, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual/range {v18 .. v18}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewAdded()V

    :cond_7
    return-void

    :cond_8
    move v4, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to show content "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but presentation is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CliContentViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
