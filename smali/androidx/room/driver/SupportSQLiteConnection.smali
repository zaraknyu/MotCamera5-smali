.class public final Landroidx/room/driver/SupportSQLiteConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteConnection;


# instance fields
.field public final db:Landroidx/sqlite/db/SupportSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final prepare(Ljava/lang/String;)Landroidx/room/driver/SupportSQLiteStatement;
    .locals 10

    const-string/jumbo v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "db"

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_9

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 5
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_4

    add-int/lit8 v5, v4, 0x1

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x2

    const/16 v5, 0xa

    .line 7
    invoke-static {v0, v5, v4, v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_2

    :cond_4
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_8

    add-int/lit8 v5, v4, 0x1

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-eq v8, v9, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 9
    invoke-static {v0, v9, v5, v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v5

    if-gez v5, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v5, 0x1

    if-ge v4, v1, :cond_7

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_5

    :cond_7
    add-int/lit8 v4, v5, 0x2

    goto :goto_0

    :cond_8
    :goto_1
    move v3, v4

    :cond_9
    :goto_2
    if-ltz v3, :cond_b

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v3, v1, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v3, 0x3

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_c

    .line 13
    new-instance v0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;

    invoke-direct {v0, p0, p1}, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x1367f

    if-eq v1, v3, :cond_f

    const v3, 0x1403a

    if-eq v1, v3, :cond_e

    const v3, 0x14fc2

    if-eq v1, v3, :cond_d

    goto :goto_5

    :cond_d
    const-string v1, "WIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    :cond_e
    const-string v1, "SEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    :cond_f
    const-string v1, "PRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 15
    :cond_10
    new-instance v0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 16
    invoke-direct {v0, p0, p1}, Landroidx/room/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    .line 17
    new-array p0, v2, [I

    iput-object p0, v0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->bindingTypes:[I

    .line 18
    new-array p0, v2, [J

    iput-object p0, v0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->longBindings:[J

    .line 19
    new-array p0, v2, [D

    iput-object p0, v0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->doubleBindings:[D

    .line 20
    new-array p0, v2, [Ljava/lang/String;

    iput-object p0, v0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->stringBindings:[Ljava/lang/String;

    .line 21
    new-array p0, v2, [[B

    iput-object p0, v0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->blobBindings:[[B

    return-object v0

    .line 22
    :cond_11
    :goto_5
    new-instance v0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;

    invoke-direct {v0, p0, p1}, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Landroidx/room/driver/SupportSQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/room/driver/SupportSQLiteStatement;

    move-result-object p0

    return-object p0
.end method
