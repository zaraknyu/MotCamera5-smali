.class public abstract Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "com/google/mlkit/common/internal/zze",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/mlkit/common/internal/zze;

.field public static volatile INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->Companion:Lcom/google/mlkit/common/internal/zze;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract captureRecordDao()Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;
.end method
