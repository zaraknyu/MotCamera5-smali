.class public final Lcom/motorola/camera/provider/photos/TypeIDDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static volatile mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;
    .locals 8

    sget-object v0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    if-nez v0, :cond_1

    const-class v1, Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    if-nez v0, :cond_0

    new-instance v2, Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    const-string v4, "bestshot_provider.db"

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    sput-object v2, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->mHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget p0, p0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :try_start_0
    const-string p0, "CREATE TABLE events ( _id INTEGER PRIMARY KEY AUTOINCREMENT, keytag TEXT NOT NULL, keyvalue DOUBLE, keytype TEXT NOT NULL, taglevel INTEGER, parenttag TEXT, usecaseduration LONG, hdr TEXT, flash TEXT, panorama BOOLEAN, focus TEXT, geotag BOOLEAN, shutterttone BOOLEAN, videomode TEXT, camera TEXT, mode INTEGER, resolution TEXT, coldstart BOOLEAN, launchtype TEXT, timestamp long,calbrtnvalue TEXT,calibrationkeytype BOOLEAN, batterytemp TEXT, batterylevel TEXT, mediaserver TEXT, qcdaemon TEXT, motcam TEXT, currentdrain TEXT );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " creating sql database using query CREATE TABLE events ( _id INTEGER PRIMARY KEY AUTOINCREMENT, keytag TEXT NOT NULL, keyvalue DOUBLE, keytype TEXT NOT NULL, taglevel INTEGER, parenttag TEXT, usecaseduration LONG, hdr TEXT, flash TEXT, panorama BOOLEAN, focus TEXT, geotag BOOLEAN, shutterttone BOOLEAN, videomode TEXT, camera TEXT, mode INTEGER, resolution TEXT, coldstart BOOLEAN, launchtype TEXT, timestamp long,calbrtnvalue TEXT,calibrationkeytype BOOLEAN, batterytemp TEXT, batterylevel TEXT, mediaserver TEXT, qcdaemon TEXT, motcam TEXT, currentdrain TEXT );"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstrumentReportDBHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string p0, "CREATE TABLE special_types_mapper (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget p2, p0, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :pswitch_0
    const-string p0, "DROP TABLE IF EXISTS special_types_mapper"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE special_types_mapper (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
