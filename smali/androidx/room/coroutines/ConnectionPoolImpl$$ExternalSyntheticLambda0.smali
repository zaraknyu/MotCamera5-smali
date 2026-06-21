.class public final synthetic Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/tinder/StateMachine;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tinder/StateMachine;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tinder/StateMachine;

    iput-object p2, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tinder/StateMachine;

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tinder/StateMachine;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->f$0:Lcom/tinder/StateMachine;

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tinder/StateMachine;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    const-string v0, "PRAGMA query_only = 1"

    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
