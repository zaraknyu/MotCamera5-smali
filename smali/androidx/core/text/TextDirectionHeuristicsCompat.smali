.class public abstract Landroidx/core/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIRSTSTRONG_LTR:Lcom/motorola/camera/ui/DownUpDetector;

.field public static final FIRSTSTRONG_RTL:Lcom/motorola/camera/ui/DownUpDetector;

.field public static final LTR:Lcom/motorola/camera/ui/DownUpDetector;

.field public static final RTL:Lcom/motorola/camera/ui/DownUpDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Lcom/motorola/camera/ui/DownUpDetector;

    new-instance v0, Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Lcom/motorola/camera/ui/DownUpDetector;

    new-instance v0, Lcom/motorola/camera/ui/DownUpDetector;

    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lcom/motorola/camera/ui/DownUpDetector;

    new-instance v0, Lcom/motorola/camera/ui/DownUpDetector;

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lcom/motorola/camera/ui/DownUpDetector;

    return-void
.end method
