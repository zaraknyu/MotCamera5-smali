.class public final Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/zxing/Result;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;->this$0:Lcom/google/zxing/Result;

    return-void
.end method


# virtual methods
.method public final onMediaVolumesChanged()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;->this$0:Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->processMediaVolumes()V

    return-void
.end method
