.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createLayoutManager(Lcom/motorola/camera/Camera;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;ZZZ)Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
    .locals 0

    if-eqz p3, :cond_1

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/layoutmanager/SmallCliLayoutManager;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/layoutmanager/SmallCliLayoutManager;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    if-eqz p4, :cond_2

    new-instance p0, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;

    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    return-object p0

    :cond_2
    if-eqz p2, :cond_4

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-nez p2, :cond_3

    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V

    return-object p2

    :cond_3
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/FoldSplitScreenLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/FoldSplitScreenLayoutManager;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V

    return-object p2

    :cond_4
    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p2, :cond_5

    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V

    return-object p2

    :cond_5
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V

    return-object p2
.end method
