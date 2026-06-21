.class public abstract Landroidx/compose/runtime/saveable/SaverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    sget-object v1, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method
