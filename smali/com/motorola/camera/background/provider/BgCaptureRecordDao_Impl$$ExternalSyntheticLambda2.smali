.class public final synthetic Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$2:I

    iput p2, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$3:I

    iput-wide p3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$4:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$2:I

    iget v1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$3:I

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$4:J

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    const-string v4, "_connection"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "UPDATE bgCaptureRecord_table SET thumbnailPath = ?, thumbWidth = ?, thumbHeight = ? WHERE id = ?"

    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v4

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v4, v5, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x2

    int-to-long v5, v0

    invoke-interface {v4, p0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x3

    int-to-long v0, v1

    invoke-interface {v4, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x4

    invoke-interface {v4, p0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {v4}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_1
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw p0
.end method
