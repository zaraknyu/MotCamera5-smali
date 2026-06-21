.class public final Lcom/google/common/collect/Sets$2$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final itr:Ljava/util/Iterator;

.field public next:Ljava/lang/Object;

.field public state:I

.field public final synthetic val$set2:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/Sets$2$1;->val$set2:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$2$1;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->$r8$classId:I

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/Sets$2$1;->val$set2:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$2$1;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    iput v1, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    iget v0, p0, Lcom/google/common/collect/Sets$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$2$1;->val$set2:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$2$1;->val$set2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/Sets$2$1;->next:Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iput v2, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    return v2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$2$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/Sets$2$1;->state:I

    iget-object v0, p0, Lcom/google/common/collect/Sets$2$1;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/Sets$2$1;->next:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
