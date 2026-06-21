.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zztr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getWrappedDb(Landroidx/room/ObservedTableVersions;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .locals 2

    const-string/jumbo v0, "refHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    invoke-direct {v0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    return-object v0
.end method
