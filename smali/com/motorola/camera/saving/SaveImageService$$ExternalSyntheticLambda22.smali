.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$1:J

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$2:Ljava/io/File;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$3:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$4:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/google/android/gms/tasks/zzb;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$2:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$3:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$4:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;

    iget-wide v5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->f$1:J

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;-><init>(IIJLjava/lang/String;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    :cond_0
    return-void
.end method
