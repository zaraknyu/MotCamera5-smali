.class public final Lcom/google/gson/internal/LinkedTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;I)V
    .locals 0

    iput p2, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->$r8$classId:I

    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v2, p0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :pswitch_0
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;-><init>(Lcom/google/gson/internal/LinkedTreeMap;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;-><init>(Lcom/google/gson/internal/LinkedTreeMap;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v2, v0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    :goto_1
    return v1

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    const/4 p1, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1, p1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    :cond_5
    if-eqz v1, :cond_6

    move v0, p1

    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget p0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget p0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
