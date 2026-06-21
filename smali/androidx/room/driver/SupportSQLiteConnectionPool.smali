.class public final Landroidx/room/driver/SupportSQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final supportDriver:Lcom/google/android/gms/tasks/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Lcom/google/android/gms/tasks/zza;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Lcom/google/android/gms/tasks/zza;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Lcom/google/android/gms/tasks/zza;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/room/driver/SupportSQLitePooledConnection;

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-direct {p1, v0}, Landroidx/room/driver/SupportSQLitePooledConnection;-><init>(Landroidx/room/driver/SupportSQLiteConnection;)V

    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
