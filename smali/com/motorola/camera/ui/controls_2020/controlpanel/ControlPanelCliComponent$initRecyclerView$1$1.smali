.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$initRecyclerView$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$initRecyclerView$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$initRecyclerView$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    return v1
.end method
