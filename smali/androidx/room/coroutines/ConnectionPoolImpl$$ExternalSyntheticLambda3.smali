.class public final synthetic Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/google/android/gms/tasks/zzb;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance v2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v1, v1, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v3, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget-boolean p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->f$1:Z

    if-eqz p0, :cond_2

    iput-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/google/android/gms/tasks/zzb;

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/ConnectionPoolImpl;

    iget-boolean p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;->f$1:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "reader"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "writer"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timed out attempting to acquire a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connection."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\nWriter pool:\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    invoke-virtual {p0, v1}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    const-string p0, "Reader pool:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    invoke-virtual {p0, v1}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0, p0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
