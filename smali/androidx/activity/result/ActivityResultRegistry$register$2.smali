.class public final Landroidx/activity/result/ActivityResultRegistry$register$2;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "SourceFile"


# instance fields
.field public final synthetic $contract:Landroidx/activity/result/contract/ActivityResultContract;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;I)V
    .locals 0

    iput p4, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final launch(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, v0, Landroidx/activity/result/ActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/activity/result/ActivityResultRegistry;->keyToRc:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v0, v2, p0, p1}, Landroidx/activity/result/ActivityResultRegistry;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and input "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, v0, Landroidx/activity/result/ActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/activity/result/ActivityResultRegistry;->keyToRc:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-virtual {v0, v2, p0, p1}, Landroidx/activity/result/ActivityResultRegistry;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and input "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/activity/result/ActivityResultRegistry;->unregister$activity_release(Ljava/lang/String;)V

    return-void
.end method
