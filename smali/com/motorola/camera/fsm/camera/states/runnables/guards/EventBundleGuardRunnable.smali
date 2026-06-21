.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final mDefaultValue:Ljava/lang/Object;

.field public final mGuard:Ljava/lang/Object;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mDefaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mGuard:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 2

    instance-of p1, p2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mDefaultValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mGuard:Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    check-cast p2, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
