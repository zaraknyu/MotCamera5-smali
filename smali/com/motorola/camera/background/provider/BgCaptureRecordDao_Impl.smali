.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfBgCaptureRecord:Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__insertAdapterOfBgCaptureRecord:Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

    return-void
.end method
