.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $customAnimation:Z

.field public final synthetic $isCliDisplay:Z

.field public final synthetic $onComplete:Lkotlin/jvm/functions/Function1;

.field public final synthetic $result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

.field public final synthetic $view:Landroid/view/View;

.field public label:I


# direct methods
.method public constructor <init>(ZZLcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$customAnimation:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$isCliDisplay:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$view:Landroid/view/View;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$view:Landroid/view/View;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$customAnimation:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$isCliDisplay:Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;-><init>(ZZLcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$result:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object v1, v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$customAnimation:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_8

    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPRCFilmstripTransitionSupported:Z

    goto :goto_0

    :cond_2
    move p1, v5

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/Util;->setupGalleryWithCustomAnimation()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$isCliDisplay:Z

    if-nez p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_1
    if-eqz p1, :cond_8

    const-string/jumbo p1, "processing_uri_intent_extra"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v6, "accelerometer_rotation"

    invoke-static {p1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_4

    move v5, v4

    :cond_4
    if-nez v5, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$view:Landroid/view/View;

    instance-of v5, p1, Landroid/widget/ImageView;

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, p1

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_6

    check-cast v5, Landroid/app/Activity;

    goto :goto_2

    :cond_6
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    const-string/jumbo v6, "use_shared_element_snapshot_for_thumbnail"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$setupFilmstripTransition$1;

    invoke-direct {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$setupFilmstripTransition$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    const-string/jumbo v1, "photos:filmstrip_transition_view"

    invoke-static {v5, p1, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    :cond_8
    :goto_3
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v5, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_9

    return-object v2

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
