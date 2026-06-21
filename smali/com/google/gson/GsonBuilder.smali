.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dateStyle:I

.field public final escapeHtmlChars:Z

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final factories:Ljava/util/ArrayList;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy$1;

.field public formattingStyle:Lcom/google/gson/FormattingStyle;

.field public final hierarchyFactories:Ljava/util/ArrayList;

.field public final instanceCreators:Ljava/util/HashMap;

.field public final longSerializationPolicy:I

.field public final numberToNumberStrategy:Lcom/google/gson/ToNumberPolicy$2;

.field public final objectToNumberStrategy:Lcom/google/gson/ToNumberPolicy$1;

.field public final reflectionFilters:Ljava/util/ArrayDeque;

.field public final timeStyle:I

.field public final useJdkUnsafe:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:I

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy$1;

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy$1;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_FORMATTING_STYLE:Lcom/google/gson/FormattingStyle;

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iput v1, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_FORMATTING_STYLE:Lcom/google/gson/FormattingStyle;

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->formattingStyle:Lcom/google/gson/FormattingStyle;

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->useJdkUnsafe:Z

    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/google/gson/ToNumberPolicy$1;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberPolicy$1;

    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_NUMBER_TO_NUMBER_STRATEGY:Lcom/google/gson/ToNumberPolicy$2;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberPolicy$2;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final create()Lcom/google/gson/Gson;
    .locals 12

    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v1, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    iget v3, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iget v4, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    if-eq v4, v5, :cond_2

    :cond_0
    sget-object v5, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType$1;

    invoke-virtual {v5, v3, v4}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v5

    if-eqz v1, :cond_1

    sget-object v6, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    invoke-virtual {v6, v3, v4}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v6

    sget-object v7, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/sql/SqlTypesSupport$1;

    invoke-virtual {v7, v3, v4}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move-object v3, v6

    :goto_0
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v0

    new-instance v0, Lcom/google/gson/Gson;

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/google/gson/GsonBuilder;->formattingStyle:Lcom/google/gson/FormattingStyle;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy$1;

    iget-boolean v4, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v6, p0, Lcom/google/gson/GsonBuilder;->useJdkUnsafe:Z

    iget v7, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:I

    iget-object v9, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberPolicy$1;

    iget-object v10, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberPolicy$2;

    invoke-direct/range {v0 .. v11}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingPolicy;Ljava/util/Map;ZLcom/google/gson/FormattingStyle;ZILjava/util/List;Lcom/google/gson/ToNumberPolicy;Lcom/google/gson/ToNumberPolicy;Ljava/util/List;)V

    return-object v0
.end method
