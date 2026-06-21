.class public abstract Landroidx/compose/ui/text/Savers_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LineBreakSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final PlatformParagraphStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public static final TextMotionSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$24:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$26:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    sget-object v2, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/Savers_androidKt;->PlatformParagraphStyleSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$23:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$25:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/Savers_androidKt;->LineBreakSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE$25:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$27:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/ui/text/Savers_androidKt;->TextMotionSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method
