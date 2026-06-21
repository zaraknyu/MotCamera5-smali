.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlaybackInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$1:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public perform(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;->f$1:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, p1}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v0

    :cond_2
    invoke-virtual {v2}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;->run()V

    return v0

    :cond_3
    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    return v0

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p0, v0, :cond_5

    const-string p0, "DRAGGING"

    goto :goto_2

    :cond_5
    const-string p0, "SETTLING"

    :goto_2
    const-string v0, " should not be set externally."

    invoke-static {v1, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
