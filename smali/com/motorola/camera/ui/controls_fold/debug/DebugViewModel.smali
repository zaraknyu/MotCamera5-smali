.class public final Lcom/motorola/camera/ui/controls_fold/debug/DebugViewModel;
.super Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_fold/debug/DebugViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final getShouldLoad()Z
    .locals 0

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    const/4 p0, 0x0

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    :cond_0
    return-void
.end method
