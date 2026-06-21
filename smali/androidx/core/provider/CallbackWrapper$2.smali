.class public final Landroidx/core/provider/CallbackWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$callback:Ljava/lang/Object;

.field public val$reason:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/core/provider/CallbackWrapper$2;->$r8$classId:I

    iput-object p3, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    iput p1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/provider/CallbackWrapper$2;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    .line 6
    iput-object p2, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/core/provider/CallbackWrapper$2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/core/provider/CallbackWrapper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    iget v1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    if-gtz v1, :cond_1

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CAPTURE_TRIGGER"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->DV_AUTO:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabq;

    iget p0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaI(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Landroidx/room/ObservedTableVersions;

    iget p0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    iget-object v0, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/CamUtils;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroidx/core/content/res/CamUtils;->onFontRetrievalFailed(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
