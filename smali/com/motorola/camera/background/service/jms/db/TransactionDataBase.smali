.class public abstract Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "com/google/android/gms/dynamite/zzf",
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
.field public static final Companion:Lcom/google/android/gms/dynamite/zzf;

.field public static volatile INSTANCE:Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase;->Companion:Lcom/google/android/gms/dynamite/zzf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transactionDao()Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;
.end method
