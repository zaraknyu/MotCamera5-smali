.class public abstract Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/panorama/PanoramaService;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/panorama/PanoramaService;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    return-void
.end method
