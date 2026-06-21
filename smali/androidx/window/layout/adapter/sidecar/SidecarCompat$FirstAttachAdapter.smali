.class public final Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityWeakReference:Ljava/lang/Object;

.field public final sidecarCompat:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/compose/runtime/Recomposer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->sidecarCompat:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->activityWeakReference:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->$r8$classId:I

    const-string/jumbo v0, "sidecarCompat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->sidecarCompat:Ljava/lang/Object;

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->activityWeakReference:Ljava/lang/Object;

    return-void
.end method

.method private final onViewAttachedToWindow$androidx$compose$ui$platform$WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->activityWeakReference:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->sidecarCompat:Ljava/lang/Object;

    check-cast p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    invoke-virtual {p0, v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->register(Landroid/os/IBinder;Landroid/app/Activity;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->sidecarCompat:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;->activityWeakReference:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/Recomposer;

    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->cancel()V

    return-void

    :pswitch_0
    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
