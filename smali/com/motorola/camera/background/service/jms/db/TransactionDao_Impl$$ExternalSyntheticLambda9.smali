.class public final synthetic Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(IIIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$1:I

    iput p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$2:I

    iput-object p6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$4:I

    iput-wide p4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$5:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$1:I

    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$2:I

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$4:I

    iget-wide v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;->f$5:J

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    const-string p0, "_connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "UPDATE transaction_table SET callerId = ?, msgType = ?, msg = ?, returnCode = ? WHERE id = ?"

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v6, 0x1

    int-to-long v7, v0

    :try_start_0
    invoke-interface {p0, v6, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    int-to-long v6, v1

    invoke-interface {p0, v0, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    invoke-interface {p0, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v0, 0x4

    int-to-long v1, v3

    invoke-interface {p0, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    invoke-interface {p0, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method
