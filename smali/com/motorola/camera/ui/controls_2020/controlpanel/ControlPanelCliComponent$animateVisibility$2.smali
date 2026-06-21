.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$2;
.super Lcom/motorola/camera/utility/AnimationListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $onFinish:Lkotlin/jvm/functions/Function0;

.field public final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$2;->$onFinish:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$2;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$2;->$onFinish:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$animateVisibility$2;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
