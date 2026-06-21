.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;


# static fields
.field public static final instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

.field public static final instance$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

.field public static final instance$2:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

.field public static final instance$3:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;-><init>(I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;-><init>(I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;-><init>(I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance$2:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;-><init>(I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->instance$3:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    const-string p0, "ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS event_payloads"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    const-string p0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    const-string p0, "ALTER TABLE transport_contexts ADD COLUMN extras BLOB"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP INDEX contexts_backend_priority"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    const-string p0, "CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX events_backend_id on events(context_id)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
