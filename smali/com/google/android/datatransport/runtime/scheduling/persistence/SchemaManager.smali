.class public final Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final INCREMENTAL_MIGRATIONS:Ljava/util/List;


# instance fields
.field public configured:Z

.field public final schemaVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    sget-object v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance$2:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    sget-object v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance$3:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->schemaVersion:I

    return-void
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt p2, v1, :cond_1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    invoke-interface {v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, " to "

    const-string v2, " was requested, but cannot be performed. Only "

    const-string v3, "Migration from "

    invoke-static {p1, p2, v3, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " migrations are provided"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    const-string v1, "PRAGMA busy_timeout=0;"

    invoke-virtual {p1, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x0

    iget p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->schemaVersion:I

    invoke-static {p1, v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE event_metadata"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE transport_contexts"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS event_payloads"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
