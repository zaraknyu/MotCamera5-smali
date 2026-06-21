.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfFileData:Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

.field public final __updateAdapterOfFileData:Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__insertAdapterOfFileData:Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;

    invoke-direct {p1, v0}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__updateAdapterOfFileData:Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;

    return-void
.end method
