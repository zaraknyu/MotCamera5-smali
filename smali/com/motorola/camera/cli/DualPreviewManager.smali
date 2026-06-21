.class public final Lcom/motorola/camera/cli/DualPreviewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/cli/DualPreviewManager;

.field public static secondaryListenerWeakReference:Ljava/lang/ref/WeakReference;

.field public static sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;

.field public static final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/DualPreviewManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/cli/DualPreviewManager;->INSTANCE:Lcom/motorola/camera/cli/DualPreviewManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/cli/DualPreviewManager;->stateLock:Ljava/lang/Object;

    return-void
.end method
