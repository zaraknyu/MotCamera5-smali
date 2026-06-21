.class public final Landroidx/lifecycle/MediatorLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "SourceFile"


# instance fields
.field public final mSources:Landroidx/arch/core/internal/SafeIterableMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 4
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {p1}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    return-void
.end method


# virtual methods
.method public final addSource(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;)V
    .locals 4

    new-instance v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/MediatorLiveData$Source;-><init>(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;)V

    iget-object v1, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1}, Landroidx/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v2, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v3, v1, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    iget-object v3, v1, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-nez v3, :cond_1

    iput-object v2, v1, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v2, v1, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    iput-object v2, v3, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v2, v1, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    if-ne v2, p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This source was already added with the different observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    iget p0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez p0, :cond_5

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final onActive()V
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    iget-object v1, v0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onInactive()V
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    iget-object v1, v0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
