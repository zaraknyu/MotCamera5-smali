.class public final Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/room/RoomConnectionManager;


# direct methods
.method public constructor <init>(Landroidx/room/RoomConnectionManager;I)V
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0}, Landroidx/room/RoomConnectionManager;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public final onDowngrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V

    return-void
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0}, Landroidx/room/RoomConnectionManager;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    return-void
.end method

.method public final onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/room/RoomConnectionManager;->onMigrate(Landroidx/sqlite/SQLiteConnection;II)V

    return-void
.end method
