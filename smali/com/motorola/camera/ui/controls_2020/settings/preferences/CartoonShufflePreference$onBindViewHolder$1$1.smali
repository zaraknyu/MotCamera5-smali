.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference$onBindViewHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference$onBindViewHolder$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference$onBindViewHolder$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;->scrollHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;->autoScrollRunnable:Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    const-string p0, "e"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
